package com.frditlabs.model;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

@Entity
public class Product {
	@Id private Long id;
	private String name;
	private String description;
	private String userMail;

	public Product(){}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserMail() {
		return userMail;
	}

	public void setUserMail(String usermail) {
		userMail = usermail;
	}
}