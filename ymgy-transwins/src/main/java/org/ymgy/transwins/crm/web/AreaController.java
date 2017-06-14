/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package org.ymgy.transwins.crm.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.ymgy.transwins.common.config.Global;
import org.ymgy.transwins.common.util.StringUtils;
import org.ymgy.transwins.common.web.BaseController;
import org.ymgy.transwins.common.web.Page;
import org.ymgy.transwins.crm.entity.Area;
import org.ymgy.transwins.crm.service.AreaService;

/**
 * 区域管理Controller
 * @author ymgy
 * @version 2017-06-14
 */
@Controller
@RequestMapping(value = "${adminPath}/crm/area")
public class AreaController extends BaseController {

	@Autowired
	private AreaService areaService;
	
	@ModelAttribute
	public Area get(@RequestParam(required=false) String id) {
		Area entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = areaService.get(id);
		}
		if (entity == null){
			entity = new Area();
		}
		return entity;
	}
	
	@RequiresPermissions("crm:area:view")
	@RequestMapping(value = {"list", ""})
	public String list(Area area, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Area> page = areaService.findPage(new Page<Area>(request, response), area); 
		model.addAttribute("page", page);
		return "transwins/crm/areaList";
	}

	@RequiresPermissions("crm:area:view")
	@RequestMapping(value = "form")
	public String form(Area area, Model model) {
		model.addAttribute("area", area);
		return "transwins/crm/areaForm";
	}

	@RequiresPermissions("crm:area:edit")
	@RequestMapping(value = "save")
	public String save(Area area, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, area)){
			return form(area, model);
		}
		areaService.save(area);
		addMessage(redirectAttributes, "保存区域管理成功");
		return "redirect:"+Global.getAdminPath()+"/crm/area/?repage";
	}
	
	@RequiresPermissions("crm:area:edit")
	@RequestMapping(value = "delete")
	public String delete(Area area, RedirectAttributes redirectAttributes) {
		areaService.delete(area);
		addMessage(redirectAttributes, "删除区域管理成功");
		return "redirect:"+Global.getAdminPath()+"/crm/area/?repage";
	}

}