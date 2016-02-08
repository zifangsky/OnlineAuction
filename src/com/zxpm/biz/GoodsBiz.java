package com.zxpm.biz;

import java.util.List;

import com.zxpm.entity.Goods;

public interface GoodsBiz {
	/**
	 * 根据条件获取商品列表
	 * */
	public List<Goods> getGoods(Goods condition);
	
	/**
	 * 添加待拍商品
	 * */
	public void addGoods(Goods condition);
	
	/**
	 * 更新商品状态
	 * */
	public void updateGoods(Goods condition);
	
	/**
	 * 通过商品Id获取商品信息
	 * */
	public Goods getGoodsByGoodsId(int goodsId);
}
