/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package org.ymgy.transwins.modules.gen.dao;

import org.ymgy.transwins.common.persistence.CrudDao;
import org.ymgy.transwins.common.persistence.annotation.MyBatisDao;
import org.ymgy.transwins.modules.gen.entity.GenScheme;

/**
 * 生成方案DAO接口
 * @author ThinkGem
 * @version 2013-10-15
 */
@MyBatisDao
public interface GenSchemeDao extends CrudDao<GenScheme> {
	
}
