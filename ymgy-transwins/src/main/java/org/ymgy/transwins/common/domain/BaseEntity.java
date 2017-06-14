package org.ymgy.transwins.common.domain;

import javax.xml.bind.annotation.XmlTransient;

import org.ymgy.transwins.common.util.StringUtils;
import org.ymgy.transwins.common.web.Page;

import com.fasterxml.jackson.annotation.JsonIgnore;

public abstract class BaseEntity<T> {
	protected Page<T> page;
	@JsonIgnore
	@XmlTransient
	public Page<T> getPage() {
		if (page == null) {
			page = new Page<T>();
		}
		return page;
	}

	public Page<T> setPage(Page<T> page) {
		this.page = page;
		return page;
	}
	
}
