/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package org.ymgy.transwins.modules.sys.dao;

import java.util.List;

import org.ymgy.transwins.common.persistence.CrudDao;
import org.ymgy.transwins.common.persistence.annotation.MyBatisDao;
import org.ymgy.transwins.modules.sys.entity.Dict;

/**
 * 字典DAO接口
 * @author ThinkGem
 * @version 2014-05-16
 */
@MyBatisDao
public interface DictDao extends CrudDao<Dict> {

	public List<String> findTypeList(Dict dict);
	
}
