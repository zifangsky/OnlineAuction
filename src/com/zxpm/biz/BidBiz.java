package com.zxpm.biz;

import com.zxpm.entity.Bid;

public interface BidBiz {
	/**
	 * 根据编号获取出价记录
	 * */
	public Bid getBid(int bidId);
	
	/**
	 * 更新出价记录
	 * */
	public void updateBid(Bid bid);
	
	/**
	 * 出价
	 * */
	public void addBid(Bid bid);
}
