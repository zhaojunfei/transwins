/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package org.ymgy.transwins.crm.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.ymgy.transwins.common.service.CrudService;
import org.ymgy.transwins.common.web.Page;
import org.ymgy.transwins.crm.dao.AreaDao;
import org.ymgy.transwins.crm.entity.Area;

/**
 * 区域管理Service
 * @author ymgy
 * @version 2017-06-14
 */
@Service
@Transactional(readOnly = true)
public class AreaService extends CrudService<AreaDao, Area> {

	public Area get(String id) {
		return super.get(id);
	}
	
	public List<Area> findList(Area area) {
		return super.findList(area);
	}
	
	public Page<Area> findPage(Page<Area> page, Area area) {
		return super.findPage(page, area);
	}
	
	@Transactional(readOnly = false)
	public void save(Area area) {
		super.save(area);
	}
	
	@Transactional(readOnly = false)
	public void delete(Area area) {
		super.delete(area);
	}
	
}