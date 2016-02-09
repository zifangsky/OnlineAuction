package com.zxpm.action;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zxpm.biz.GoodsBiz;
import com.zxpm.entity.Goods;
import com.zxpm.entity.Users;

public class GoodsAction extends ActionSupport{
	private Goods goods;  //用于封装参数
	private GoodsBiz goodsBiz;  
	private File goodsImage;
	private String fileName;
	
	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public void setGoodsBiz(GoodsBiz goodsBiz) {
		this.goodsBiz = goodsBiz;
	}
	
	public void setGoodsImage(File goodsImage) {
		this.goodsImage = goodsImage;
	}
	//得到文件名
	public void setGoodsImageFileName(String fileName){
		this.fileName = fileName;
	}

	/**
	 * 在拍商品列表
	 * */
	public String toOnSaleGoodsList(){
		Goods good = new Goods();
		good.setGoodsStatus(0);  
		List<Goods> onSaleGoodsList = goodsBiz.getGoods(good);
		
		ServletActionContext.getRequest().setAttribute("onSaleGoodsList", onSaleGoodsList);
		return "list";
	}
	
	/**
	 * 登录用户发布的在拍商品列表
	 * */
	public String toMyGoods(){
		Goods good = new Goods();
		//从session中取出当前登录用户
		Map<String, Object> session = ActionContext.getContext().getSession();
		Users saler = (Users) session.get("user");
		//设置卖家
		good.setSaler(saler);
		//设置未拍出商品
		good.setGoodsStatus(0);
		
		List<Goods> myGoodsList = goodsBiz.getGoods(good);
		ServletActionContext.getRequest().setAttribute("mygoodslist", myGoodsList);

		return "myGoods";
	}
	
	/**
	 * 添加新拍卖商品
	 * */
	public String toAddGoods(){
		//1 保存上传的文件
		String targetDirectory = ServletActionContext.getServletContext().getRealPath("/uploadImages");
		String targetFileName = renameImage(fileName);
		File target = new File(targetDirectory,targetFileName);
		try {
			FileUtils.copyFile(goodsImage, target);
		} catch (IOException e) {
			e.printStackTrace();
		}
		// 2 保存新商品描述信息
		goods.setGoodsPic(targetFileName);
		Map<String, Object> session = ActionContext.getContext().getSession();
		Users saler = (Users) session.get("user");
		goods.setSaler(saler);
		goods.setBuyer(saler);
		goods.setGoodsStatus(0);
		
		goodsBiz.addGoods(goods);
		
		return "index";
	}
	
	/**
	 * 我要出价
	 * */
	public String doBid(){
		Goods g = goodsBiz.getGoodsByGoodsId(goods.getGoodsId());
		ServletActionContext.getRequest().setAttribute("g", g);
		return "goodsBid";
	}
	
	/**
	 * 文件重命名
	 * */
	public String renameImage(String fileName){
		String formatDate = new SimpleDateFormat("yyMMddHHmmss").format(new Date());
		int random = new Random().nextInt(10000);
		String extension = fileName.substring(fileName.lastIndexOf("."));
		
		return formatDate + random + extension;
	}

}
