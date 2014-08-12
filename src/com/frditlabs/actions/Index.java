package com.frditlabs.actions;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.ResultPath;

import com.opensymphony.xwork2.ActionSupport;

@ResultPath(value="/")
@Result(name="success",location="index.jsp")
public class Index extends ActionSupport {

	private static final long serialVersionUID = 1L;

}
