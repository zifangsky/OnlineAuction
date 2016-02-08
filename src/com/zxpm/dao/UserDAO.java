package com.zxpm.dao;

import java.util.List;

import com.zxpm.entity.Users;

public interface UserDAO {
	/**
	 * 用户注册
	 * */
	public void register(Users users);
	
	/**
	 * 查找用户
	 * */
	public List<Users> search(Users users);
	
	/**
	 * 修改用户账号
	 * */
	public void update(Users users);
}
