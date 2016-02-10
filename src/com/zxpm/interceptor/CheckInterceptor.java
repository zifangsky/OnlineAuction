package com.zxpm.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import com.zxpm.entity.Users;

public class CheckInterceptor implements Interceptor {
	public String intercept(ActionInvocation arg0) throws Exception {
		Map<String, Object> session = arg0.getInvocationContext().getSession();
		Users u = (Users) session.get("user");
		if(u != null)
			return arg0.invoke();
		else 
			return "login";
	}
	
	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void init() {
		// TODO Auto-generated method stub

	}


}
