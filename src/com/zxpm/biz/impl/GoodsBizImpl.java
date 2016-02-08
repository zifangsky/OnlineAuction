package com.zxpm.biz.impl;

import java.util.List;

import com.zxpm.biz.GoodsBiz;
import com.zxpm.dao.GoodsDAO;
import com.zxpm.entity.Goods;

public class GoodsBizImpl implements GoodsBiz {
	private GoodsDAO goodsDAO;
	
	public void setGoodsDAO(GoodsDAO goodsDAO) {
		this.goodsDAO = goodsDAO;
	}

	public List<Goods> getGoods(Goods condition) {
		return goodsDAO.search(condition);
	}

	public void addGoods(Goods condition) {
		goodsDAO.addGoods(condition);		
	}

	public void updateGoods(Goods condition) {
		goodsDAO.update(condition);
	}

	public Goods getGoodsByGoodsId(int goodsId) {	
		return goodsDAO.getGoodsByGoodsId(goodsId);
	}

}
