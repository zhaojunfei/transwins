/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package org.ymgy.transwins.modules.cms.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.ymgy.transwins.common.service.CrudService;
import org.ymgy.transwins.modules.cms.dao.ArticleDataDao;
import org.ymgy.transwins.modules.cms.entity.ArticleData;

/**
 * 站点Service
 * @author ThinkGem
 * @version 2013-01-15
 */
@Service
@Transactional(readOnly = true)
public class ArticleDataService extends CrudService<ArticleDataDao, ArticleData> {

}
