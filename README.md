# OnlineAuction
SSH框架实战项目——在线商品拍卖网

这个项目属于学习Java Web的SSH框架的练习之作，参考至《Struts2+Spring+Hibernate框架技术与项目实战》这本书的第24章。

一 介绍
（1）开发环境：
eclipse for javaee + JDK1.8x + tomcat1.8 + MySQL5.x

（2）采用技术：
Struts2+Spring+Hibernate+MySQL5.x+proxool数据库连接池

（3）主要功能：
用户：注册，登录，修改密码，注销

商品：添加新商品，查看在拍商品，出价

出价记录：提交出价记录，成交

二 优化
（1）删掉不少冗余的代码

（2）把添加新商品的图片上传与商品的描述信息整合在了一个页面中，详情可以参考我的这篇文章：http://www.zifangsky.cn/2016/02/struts2文件上传实例/

（3）将原项目中使用的Struts1中的logic标签替换成流行的JSTL标签，详情可以参考我的这篇文章：

http://www.zifangsky.cn/2016/02/使用jstl标签库替换struts1中的logic标签/

（4）利用Struts2的拦截器实现了权限控制，部分页面或操作需要验证登录才能继续进行，详情可以参考我的这篇文章：

http://www.zifangsky.cn/2016/02/struts2利用拦截器实现权限控制/

（5）优化了异常处理，项目在运行过程中如果出现了异常将会显示一个比较友好的界面，详情可以参考我的这篇文章：

http://www.zifangsky.cn/2016/02/struts2异常处理实例/
