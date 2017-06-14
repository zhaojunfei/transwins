/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package org.ymgy.transwins.crm.entity;

import org.hibernate.validator.constraints.Length;
import org.ymgy.transwins.common.domain.BaseEntity;

/**
 * 区域管理Entity
 * @author ymgy
 * @version 2017-06-14
 */
public class Area extends BaseEntity<Area> {
	
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String title;		// title
	private String detail;		// detail
	private String status;		// status
	
	public Area() {
		super();
	}
	
	

	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	@Length(min=0, max=100, message="title长度必须介于 0 和 100 之间")
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	@Length(min=0, max=500, message="detail长度必须介于 0 和 500 之间")
	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	@Length(min=0, max=1, message="status长度必须介于 0 和 1 之间")
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}