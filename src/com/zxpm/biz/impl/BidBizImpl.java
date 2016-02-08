package com.zxpm.biz.impl;

import com.zxpm.biz.BidBiz;
import com.zxpm.dao.BidDAO;
import com.zxpm.entity.Bid;

public class BidBizImpl implements BidBiz {
	private BidDAO bidDAO;
	
	public void setBidDAO(BidDAO bidDAO) {
		this.bidDAO = bidDAO;
	}

	public Bid getBid(int bidId) {
		return bidDAO.getBid(bidId);
	}

	public void updateBid(Bid bid) {
		bidDAO.updateBid(bid);
	}

	public void addBid(Bid bid) {
		bidDAO.addBid(bid);
	}

}
