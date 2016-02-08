package com.zxpm.biz;

import com.zxpm.entity.Users;

public interface UserBiz {
	/**
	 * 用户注册
	 * */
	public void register(Users users);
	/**
	 * 根据条件查找用户
	 * */
	public Users getUsers(Users users);
	
	/**
	 * 修改用户账户
	 * */
	public void updateUsers(Users users);
}
