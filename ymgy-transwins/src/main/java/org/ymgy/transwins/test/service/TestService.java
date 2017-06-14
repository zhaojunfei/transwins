/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package org.ymgy.transwins.test.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.ymgy.transwins.common.service.CrudService;
import org.ymgy.transwins.test.dao.TestDao;
import org.ymgy.transwins.test.entity.Test;

/**
 * 测试Service
 * @author ThinkGem
 * @version 2013-10-17
 */
@Service
@Transactional(readOnly = true)
public class TestService extends CrudService<TestDao, Test> {

}
