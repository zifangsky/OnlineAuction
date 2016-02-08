package com.zxpm.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.zxpm.dao.GoodsDAO;
import com.zxpm.entity.Goods;

public class GoodsDAOImpl extends HibernateDaoSupport implements GoodsDAO {
	
	public List<Goods> search(Goods condition) {
		Object excute = super.getHibernateTemplate().execute(new HibernateCallback<Object>() {
			public Object doInHibernate(Session session) throws HibernateException {
				Criteria criteria = session.createCriteria(Goods.class);
				if(condition != null){
					//根据商品状态筛选
					if(condition.getGoodsStatus() != null && !"".equals(condition.getGoodsStatus()))
						criteria.add(Restrictions.eq("goodsStatus", condition.getGoodsStatus()));
					//根据商品卖家筛选
					if(condition.getSaler() != null && !"".equals(condition.getSaler()))
						criteria.add(Restrictions.eq("saler", condition.getSaler()));
				}
				return criteria.list();
			}
	
		});

		return (List<Goods>) excute;
	}

	public void addGoods(Goods condition) {
		super.getHibernateTemplate().save(condition);
		
	}

	public void update(Goods condition) {
		super.getHibernateTemplate().update(condition);
	}

	public Goods getGoodsByGoodsId(int goodsId) {		
		return super.getHibernateTemplate().get(Goods.class, goodsId);
	}

}
