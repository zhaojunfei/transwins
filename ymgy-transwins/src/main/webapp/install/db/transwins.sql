CREATE TABLE `tbl_config` (
  `config_id` int(11) NOT NULL,
  `context_path` varchar(20) default '' COMMENT '部署路径',
  `servlet_point` varchar(20) default NULL COMMENT 'Servlet挂载点',
  `port` int(11) default NULL COMMENT '端口',
  `db_file_uri` varchar(50) NOT NULL default '/dbfile.svl?n=' COMMENT '数据库附件访问地址',
  `is_upload_to_db` tinyint(1) NOT NULL default '0' COMMENT '上传附件至数据库',
  `def_img` varchar(255) NOT NULL default '/r/cms/www/blue/no_picture.gif' COMMENT '图片不存在时默认图片',
  `login_url` varchar(255) NOT NULL default '/login.jspx' COMMENT '登录地址',
  `process_url` varchar(255) default NULL COMMENT '登录后处理地址',
  `count_clear_time` date NOT NULL COMMENT '计数器清除时间',
  `count_copy_time` datetime NOT NULL COMMENT '计数器拷贝时间',
  `download_code` varchar(32) NOT NULL default 'jeecms' COMMENT '下载防盗链md5混淆码',
  `download_time` int(11) NOT NULL default '12' COMMENT '下载有效时间（小时）',
  PRIMARY KEY  (`config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS配置表';


CREATE TABLE `tbl_site` (
  `site_id` int(11) NOT NULL auto_increment,
  `config_id` int(11) NOT NULL COMMENT '配置ID',
  `ftp_upload_id` int(11) default NULL COMMENT '上传ftp',
  `domain` varchar(50) NOT NULL COMMENT '域名',
  `site_path` varchar(20) NOT NULL COMMENT '路径',
  `site_name` varchar(100) NOT NULL COMMENT '网站名称',
  `short_name` varchar(100) NOT NULL COMMENT '简短名称',
  `protocol` varchar(20) NOT NULL default 'http://' COMMENT '协议',
  `dynamic_suffix` varchar(10) NOT NULL default '.jhtml' COMMENT '动态页后缀',
  `static_suffix` varchar(10) NOT NULL default '.html' COMMENT '静态页后缀',
  `static_dir` varchar(50) default NULL COMMENT '静态页存放目录',
  `is_index_to_root` char(1) NOT NULL default '0' COMMENT '是否使用将首页放在根目录下',
  `is_static_index` char(1) NOT NULL default '0' COMMENT '是否静态化首页',
  `locale_admin` varchar(10) NOT NULL default 'zh_CN' COMMENT '后台本地化',
  `locale_front` varchar(10) NOT NULL default 'zh_CN' COMMENT '前台本地化',
  `tpl_solution` varchar(50) NOT NULL default 'default' COMMENT '模板方案',
  `final_step` tinyint(4) NOT NULL default '2' COMMENT '终审级别',
  `after_check` tinyint(4) NOT NULL default '2' COMMENT '审核后(1:不能修改删除;2:修改后退回;3:修改后不变)',
  `is_relative_path` char(1) NOT NULL default '1' COMMENT '是否使用相对路径',
  `is_recycle_on` char(1) NOT NULL default '1' COMMENT '是否开启回收站',
  `domain_alias` varchar(255) default NULL COMMENT '域名别名',
  `domain_redirect` varchar(255) default NULL COMMENT '域名重定向',
  PRIMARY KEY  (`site_id`),
  UNIQUE KEY `ak_domain` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='站点表';


CREATE TABLE `tbl_action` (
  `ID` int(11) NOT NULL auto_increment,
  `title` varchar(100) default NULL,
  `code` varchar(10) default NULL,
  `status` varchar(1) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- 导出表中的数据 `tbl_action`
-- 

CREATE TABLE `tbl_area` (
  `ID` int(11) NOT NULL auto_increment,
  `title` varchar(100) default NULL,
  `detail` varchar(500) default NULL,
  `status` varchar(1) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- 
-- 导出表中的数据 `tbl_area`
-- 


CREATE TABLE `tbl_corp` (
  `ID` int(11) NOT NULL auto_increment,
  `username` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `userpwd` varchar(100) default NULL,
  `contact` varchar(100) default NULL,
  `sex` varchar(1) default NULL,
  `status` varchar(1) default NULL,
  `corp_name` varchar(100) default NULL,
  `tel` varchar(100) default NULL,
  `mobile` varchar(100) default NULL,
  `fax` varchar(20) default NULL,
  `siteurl` varchar(100) default NULL,
  `address` varchar(100) default NULL,
  `postcode` varchar(20) default NULL,
  `create_date` datetime NOT NULL,
  `staff_id` int(11) default NULL,
  `user_status` int(11) default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

-- 
-- 导出表中的数据 `tbl_corp`
-- 


CREATE TABLE `tbl_corp_contract` (
  `ID` int(11) NOT NULL auto_increment,
  `corp_id` int(11) default NULL,
  `title` varchar(100) default NULL,
  `dir` varchar(50) default NULL,
  `doc` varchar(200) default NULL,
  `create_date` datetime default NULL,
  `staff_id` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;



CREATE TABLE `tbl_language` (
  `ID` int(11) NOT NULL auto_increment,
  `title` varchar(100) default NULL,
  `status` varchar(1) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;



CREATE TABLE `tbl_log` (
  `ID` int(11) NOT NULL auto_increment,
  `staff_id` int(11) default NULL,
  `content` varchar(100) default NULL,
  `update_date` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=808 ;




CREATE TABLE `tbl_mailserver` (
  `ID` int(11) NOT NULL auto_increment,
  `title` varchar(100) default NULL,
  `detail` varchar(500) default NULL,
  `mailpwd` varchar(20) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;



INSERT INTO `tbl_mailserver` (`ID`, `title`, `detail`, `mailpwd`) VALUES 
(1, 'smtp.163.com', 'pplp@163.com', 'ericsson');



CREATE TABLE `tbl_order` (
  `ID` int(11) NOT NULL auto_increment,
  `Order_ID` int(11) default NULL,
  `corp_id` int(11) default NULL,
  `project_name` varchar(100) default NULL,
  `area_id` int(11) default NULL,
  `service_id` int(11) default NULL,
  `zishu` int(11) default NULL,
  `status` varchar(1) default NULL,
  `price` decimal(11,2) default NULL,
  `fapiao` varchar(100) default NULL,
  `create_date` datetime NOT NULL,
  `dir` varchar(100) default NULL,
  `trans_id` int(11) default NULL,
  `finish_date` date default NULL,
  `manager_id` int(11) default NULL,
  `part_name` varchar(200) default NULL,
  `all_name` varchar(200) default NULL,
  `alldir` varchar(100) default NULL,
  `partdir` varchar(100) default NULL,
  `part_date` date default NULL,
  `all_date` date default NULL,
  `jiao_date` datetime default NULL,
  `gaochou` decimal(11,2) default NULL,
  `contract_name` varchar(200) default NULL,
  `contract_dir` varchar(100) default NULL,
  `tzishu` int(11) default NULL,
  `staff_id` int(11) default NULL,
  `user_status` int(11) default '0',
  `yongjin` decimal(11,2) default NULL,
  `danjia` decimal(11,2) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;



CREATE TABLE `tbl_order_invoice` (
  `ID` int(11) NOT NULL auto_increment,
  `Order_ID` int(11) default NULL,
  `corp_id` int(11) default NULL,
  `corp_name` varchar(100) default NULL,
  `service` varchar(50) default NULL,
  `address` varchar(100) default NULL,
  `postcode` varchar(50) default NULL,
  `mobile` varchar(50) default NULL,
  `contact` varchar(50) default NULL,
  `postfs` int(11) default NULL,
  `update_date` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;


CREATE TABLE `tbl_sendmail` (
  `ID` int(11) NOT NULL auto_increment,
  `staff_id` int(11) default NULL,
  `title` varchar(100) default NULL,
  `content` varchar(4000) default NULL,
  `email` varchar(100) default NULL,
  `update_date` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;



CREATE TABLE `tbl_servicetype` (
  `ID` int(11) NOT NULL auto_increment,
  `title` varchar(100) default NULL,
  `detail` varchar(500) default NULL,
  `status` varchar(1) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;




CREATE TABLE `tbl_staff` (
  `STAFF_ID` int(11) NOT NULL auto_increment,
  `STATUS` varchar(1) default NULL,
  `NAME_CN` varchar(40) default NULL,
  `NAME_EN` varchar(40) default NULL,
  `SEX` varchar(2) default NULL,
  `USER_ID` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `dl_session` varchar(50) default NULL,
  `action` int(2) default NULL,
  `email` varchar(100) default NULL,
  `create_date` date default NULL,
  PRIMARY KEY  (`STAFF_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;



CREATE TABLE `tbl_staff_right` (
  `ID` int(11) NOT NULL auto_increment,
  `code` varchar(1000) default NULL,
  `staff_id` int(11) default NULL,
  `set_TIME` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;


INSERT INTO `tbl_staff_right` (`ID`, `code`, `staff_id`, `set_TIME`) VALUES 
(1, 'A0,B0,C0,D0,E0,F0,G0,H0', 1, '2011-05-04 14:12:08'),
(2, 'C0,D0,E0,F0,G0', 2, '2011-03-25 09:02:03'),
(3, 'C0,D0', 6, '2011-05-03 09:23:51'),
(4, 'A0,B0,C0,D0,E0,F0,G0,H0,IO', 8, '2013-10-15 13:20:42'),
(5, 'C0,D0', 7, '2013-10-12 15:14:08');


CREATE TABLE `tbl_status` (
  `ID` int(11) NOT NULL auto_increment,
  `title` varchar(100) default NULL,
  `status` varchar(1) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;






CREATE TABLE `tbl_translator` (
  `ID` int(11) NOT NULL auto_increment,
  `username` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `userpwd` varchar(100) default NULL,
  `contact` varchar(100) default NULL,
  `sex` varchar(1) default NULL,
  `status` varchar(1) default NULL,
  `tel` varchar(100) default NULL,
  `mobile` varchar(100) default NULL,
  `qq` varchar(30) default NULL,
  `msn` varchar(30) default NULL,
  `create_date` datetime default NULL,
  `area_id` varchar(100) default NULL,
  `level` int(11) default NULL,
  `manager_id` int(11) default NULL,
  `proof` varchar(1) default NULL,
  `composition` varchar(1) default NULL,
  `search` varchar(1) default NULL,
  `reading` varchar(1) default NULL,
  `samplename` varchar(100) default NULL,
  `lang_id` varchar(100) default NULL,
  `zhother` int(1) default NULL,
  `otherzh` int(1) default NULL,
  `speed` varchar(1) default NULL,
  `worktype` int(1) default NULL,
  `worktime` int(1) default NULL,
  `scontent` mediumtext,
  `tcontent` mediumtext,
  `dir` varchar(50) default NULL,
  `doc` varchar(50) default NULL,
  `service_id` int(11) default NULL,
  `service_type` int(11) default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=122 ;


CREATE TABLE IF NOT EXISTS `tbl_online` (
  `ID` int(11) NOT NULL auto_increment,
  `staff_id` int(11) default NULL,
  `ipaddress` varchar(40) default NULL,
  `lastactivity` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=153 ;

