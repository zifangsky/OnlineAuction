package com.zxpm.interceptor;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.StrutsStatics;
import org.springframework.dao.DataAccessException;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class ErrorInterceptor implements Interceptor {
	public String intercept(ActionInvocation arg0) throws Exception {	
		try {
			String result = arg0.invoke(); // Action的返回值
			return result;
		} catch (DataAccessException ex) {
			HttpServletRequest request = (HttpServletRequest) arg0.getInvocationContext()
					.get(StrutsStatics.HTTP_REQUEST);
			request.setAttribute("errorMsg", "数据库操作失败！");
			return "errorMsg";
		} catch (NullPointerException ex) {
			HttpServletRequest request = (HttpServletRequest) arg0.getInvocationContext()
					.get(StrutsStatics.HTTP_REQUEST);
			request.setAttribute("errorMsg", "空指针异常！");
			return "errorMsg";
		} catch (IOException ex) {
			HttpServletRequest request = (HttpServletRequest) arg0.getInvocationContext()
					.get(StrutsStatics.HTTP_REQUEST);
			request.setAttribute("errorMsg", "IO读写异常！");
			return "errorMsg";
		} catch (ClassNotFoundException ex) {
			HttpServletRequest request = (HttpServletRequest) arg0.getInvocationContext()
					.get(StrutsStatics.HTTP_REQUEST);
			request.setAttribute("errorMsg", "指定的类不存在！");
			return "errorMsg";
		} catch (ArithmeticException ex) {
			HttpServletRequest request = (HttpServletRequest) arg0.getInvocationContext()
					.get(StrutsStatics.HTTP_REQUEST);
			request.setAttribute("errorMsg", "数学运算异常！");
			return "errorMsg";
		} catch (ArrayIndexOutOfBoundsException ex) {
			HttpServletRequest request = (HttpServletRequest) arg0.getInvocationContext()
					.get(StrutsStatics.HTTP_REQUEST);
			request.setAttribute("errorMsg", "数组下标越界！");
			return "errorMsg";
		} catch (IllegalArgumentException ex) {
			HttpServletRequest request = (HttpServletRequest) arg0.getInvocationContext()
					.get(StrutsStatics.HTTP_REQUEST);
			request.setAttribute("errorMsg", "调用方法的参数错误！");
			return "errorMsg";
		} catch (ClassCastException ex) {
			HttpServletRequest request = (HttpServletRequest) arg0.getInvocationContext()
					.get(StrutsStatics.HTTP_REQUEST);
			request.setAttribute("errorMsg", "类型强制转换错误！");
			return "errorMsg";
		} catch (SecurityException ex) {
			HttpServletRequest request = (HttpServletRequest) arg0.getInvocationContext()
					.get(StrutsStatics.HTTP_REQUEST);
			request.setAttribute("errorMsg", "违背安全原则异常！");
			return "errorMsg";
		} catch (SQLException ex) {
			HttpServletRequest request = (HttpServletRequest) arg0.getInvocationContext()
					.get(StrutsStatics.HTTP_REQUEST);
			request.setAttribute("errorMsg", "数据库操作异常！");
			return "errorMsg";
		} catch (NoSuchMethodError ex) {
			HttpServletRequest request = (HttpServletRequest) arg0.getInvocationContext()
					.get(StrutsStatics.HTTP_REQUEST);
			request.setAttribute("errorMsg", "调用了未定义的方法！");
			return "errorMsg";
		} catch (InternalError ex) {
			HttpServletRequest request = (HttpServletRequest) arg0.getInvocationContext()
					.get(StrutsStatics.HTTP_REQUEST);
			request.setAttribute("errorMsg", "Java虚拟机发生了内部错误！");
			return "errorMsg";
		} catch (Exception ex) {
			HttpServletRequest request = (HttpServletRequest) arg0.getInvocationContext()
					.get(StrutsStatics.HTTP_REQUEST);
			request.setAttribute("errorMsg", "Sorry，系统发生了未知的错误，请联系管理员或稍后再试！");
			return "errorMsg";
		}
		
	}

	public void destroy() {

	}

	public void init() {

	}

}
