package com.zxpm.dao.impl;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.zxpm.dao.BidDAO;
import com.zxpm.entity.Bid;

public class BidDAOImpl extends HibernateDaoSupport implements BidDAO {
	public void addBid(Bid bid) {
		super.getHibernateTemplate().save(bid);
		
	}
	
	public Bid getBid(int bidId) {	
		return super.getHibernateTemplate().get(Bid.class, bidId);
	}

	public void updateBid(Bid bid) {
		super.getHibernateTemplate().update(bid);
	}

}
