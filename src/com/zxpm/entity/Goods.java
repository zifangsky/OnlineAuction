package com.zxpm.entity;

import java.util.HashSet;
import java.util.Set;

public class Goods implements java.io.Serializable{
	private Integer goodsId;
	private Users buyer;
	private Users saler;
	private String goodsName;
	private Float goodsPrice;
	private String goodsPic;
	private String goodsDesc;
	private Integer goodsStatus;
	private Set<Bid> bids = new HashSet<Bid>(0);
	public Goods() {

	}
	public Goods(Integer goodsId, Users buyer, Users saler, String goodsName, Float goodsPrice, String goodsPic,
			String goodsDesc, Integer goodsStatus) {
		this.goodsId = goodsId;
		this.buyer = buyer;
		this.saler = saler;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsPic = goodsPic;
		this.goodsDesc = goodsDesc;
		this.goodsStatus = goodsStatus;
	}
	public Goods(Integer goodsId, Users buyer, Users saler, String goodsName, Float goodsPrice, String goodsPic,
			String goodsDesc, Integer goodsStatus, Set<Bid> bids) {
		this.goodsId = goodsId;
		this.buyer = buyer;
		this.saler = saler;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsPic = goodsPic;
		this.goodsDesc = goodsDesc;
		this.goodsStatus = goodsStatus;
		this.bids = bids;
	}
	public Integer getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}
	public Users getBuyer() {
		return buyer;
	}
	public void setBuyer(Users buyer) {
		this.buyer = buyer;
	}
	public Users getSaler() {
		return saler;
	}
	public void setSaler(Users saler) {
		this.saler = saler;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public Float getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(Float goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public String getGoodsPic() {
		return goodsPic;
	}
	public void setGoodsPic(String goodsPic) {
		this.goodsPic = goodsPic;
	}
	public String getGoodsDesc() {
		return goodsDesc;
	}
	public void setGoodsDesc(String goodsDesc) {
		this.goodsDesc = goodsDesc;
	}
	public Integer getGoodsStatus() {
		return goodsStatus;
	}
	/**
	 * 状态为0，表示未拍出
	 * 状态为1，表示已拍出
	 * */
	public void setGoodsStatus(Integer goodsStatus) {
		this.goodsStatus = goodsStatus;
	}
	public Set<Bid> getBids() {
		return bids;
	}
	public void setBids(Set<Bid> bids) {
		this.bids = bids;
	}
	
	
}
