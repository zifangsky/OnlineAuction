package com.zxpm.entity;

import java.util.Date;

public class Bid implements java.io.Serializable{
	private Integer bidId;
	private Users buyer;
	private Goods goods;
	private Date bidTime;
	private float bidPrice;
	private Integer bidStatus;  //出价状态，0正常，1成交
	public Bid() {

	}
	public Bid(Integer bidId, Users buyer, Goods goods, Date bidTime, float bidPrice, Integer bidStatus) {
		this.bidId = bidId;
		this.buyer = buyer;
		this.goods = goods;
		this.bidTime = bidTime;
		this.bidPrice = bidPrice;
		this.bidStatus = bidStatus;
	}
	public Integer getBidId() {
		return bidId;
	}
	public void setBidId(Integer bidId) {
		this.bidId = bidId;
	}
	public Users getBuyer() {
		return buyer;
	}
	public void setBuyer(Users buyer) {
		this.buyer = buyer;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public Date getBidTime() {
		return bidTime;
	}
	public void setBidTime(Date bidTime) {
		this.bidTime = bidTime;
	}
	public float getBidPrice() {
		return bidPrice;
	}
	public void setBidPrice(float bidPrice) {
		this.bidPrice = bidPrice;
	}
	
	public Integer getBidStatus() {
		return bidStatus;
	}
	/**
	 * 出价状态，0正常，1成交
	 * */
	public void setBidStatus(Integer bidStatus) {
		this.bidStatus = bidStatus;
	}

}
