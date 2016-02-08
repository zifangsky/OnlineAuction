package com.zxpm.action;

import java.util.Date;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zxpm.biz.BidBiz;
import com.zxpm.biz.GoodsBiz;
import com.zxpm.biz.UserBiz;
import com.zxpm.entity.Bid;
import com.zxpm.entity.Goods;
import com.zxpm.entity.Users;

public class BidAction extends ActionSupport {
	private int bidId;  //封装前台提交参数
	private float myBidPrice;
	private GoodsBiz goodsBiz;
	private UserBiz userBiz;
	private BidBiz bidBiz;
	private Goods goods;
	
	
	public void setBidId(int bidId) {
		this.bidId = bidId;
	}

	public void setGoodsBiz(GoodsBiz goodsBiz) {
		this.goodsBiz = goodsBiz;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	public void setBidBiz(BidBiz bidBiz) {
		this.bidBiz = bidBiz;
	}

	public void setMyBidPrice(float myBidPrice) {
		this.myBidPrice = myBidPrice;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	/**
	 * 出价
	 * */
	public String doSubmitBid(){
		int goodsId = goods.getGoodsId().intValue();  //商品Id
		Goods g = goodsBiz.getGoodsByGoodsId(goodsId);
		Users buyer = (Users) ActionContext.getContext().getSession().get("user");  //买家
		Bid bid = new Bid();
		bid.setBidPrice(myBidPrice);
		bid.setBidStatus(0);
		bid.setBidTime(new Date());
		bid.setBuyer(buyer);
		bid.setGoods(g);
		bidBiz.addBid(bid);
		
		return "index";
	}

	/**
	 * 成交
	 * */
	public String doDeal(){
		Bid bid = bidBiz.getBid(bidId);  //根据编号获取出价记录
		Goods goods = bid.getGoods();
		Users buyer = bid.getBuyer();
		bid.setBidStatus(1);  //状态设为1，表示已成交
		bidBiz.updateBid(bid);  //更新出价记录
		goods.setGoodsStatus(1);  //状态设为1，表示已拍出
		goods.setBuyer(buyer);
		goodsBiz.updateGoods(goods);  //更新商品状态
		
		return "index";
	}
}
