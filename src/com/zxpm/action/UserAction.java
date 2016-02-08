package com.zxpm.action;

import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zxpm.biz.UserBiz;
import com.zxpm.entity.Users;

public class UserAction extends ActionSupport {
	private Users users;
	private UserBiz userBiz;

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}
	
	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	/**
	 * 注册
	 * */
	public String addUser(){
		userBiz.register(users);
		return "success";
	}
	
	/**
	 * 登录
	 * */
	public String login(){
		Users u = userBiz.getUsers(users);
		if(u != null)
			ActionContext.getContext().getSession().put("user", u);
		
		return "index";
	}
	
	/**
	 * 注销
	 * */
	public String loginout(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		if(session.get("user") != null)
			session.remove("user");
		return "success";
	}
	
	/**
	 * 修改密码
	 * */
	public String modifyPassword(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		Users u = (Users) session.get("user");
		u.setPassword(users.getPassword());
		session.put("user", u);
		userBiz.updateUsers(u);
		
		return "success";
	}
	
	
	
	
	
	
	
	
	
	
}
