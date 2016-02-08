package com.zxpm.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Example;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.zxpm.dao.UserDAO;
import com.zxpm.entity.Users;

public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {
	public void register(Users users) {
		super.getHibernateTemplate().save(users);
	}

	public List<Users> search(Users users) {
		
		Object execute =  super.getHibernateTemplate().execute(new HibernateCallback<Object>() {

			public Object doInHibernate(Session session) throws HibernateException {
				Criteria criteria = session.createCriteria(Users.class);
				if(users != null)
					criteria.add(Example.create(users));
				return criteria.list();
			}
		});
		
		return (List<Users>) execute;
	}

	public void update(Users users) {
		super.getHibernateTemplate().update(users);	
	}

}
