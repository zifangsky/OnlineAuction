package com.zxpm.dao;

import com.zxpm.entity.Bid;

public interface BidDAO {
	/**
	 * 添加出价记录
	 * */
	public void addBid(Bid bid);
	
	/**
	 * 根据编号获取出价记录
	 * */
	public Bid getBid(int bidId);
	
	/**
	 * 更新出价记录
	 * */
	public void updateBid(Bid bid);
}
