package com.zxpm.dao;

import java.util.List;

import com.zxpm.entity.Goods;

public interface GoodsDAO {
	/**
	 * 根据条件获取商品列表
	 * */
	public List<Goods> search(Goods condition);
	
	/**
	 * 添加待拍商品
	 * */
	public void addGoods(Goods condition);
	
	/**
	 * 更新商品状态
	 * */
	public void update(Goods condition);
	
	/**
	 * 通过商品Id获取商品信息
	 * */
	public Goods getGoodsByGoodsId(int goodsId);
}
