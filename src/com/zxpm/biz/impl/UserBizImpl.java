package com.zxpm.biz.impl;

import java.util.Iterator;
import java.util.List;

import org.apache.catalina.User;

import com.zxpm.biz.UserBiz;
import com.zxpm.dao.UserDAO;
import com.zxpm.entity.Users;

public class UserBizImpl implements UserBiz {
	private UserDAO userDAO;
	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public void register(Users users) {
		userDAO.register(users);
	}

	public Users getUsers(Users users) {
		List<Users> list = userDAO.search(users);
		Iterator<Users> iterator = list.iterator();
		if(iterator.hasNext())
			return iterator.next();
		return null;
	}

	public void updateUsers(Users users) {
		userDAO.update(users);
	}

}
