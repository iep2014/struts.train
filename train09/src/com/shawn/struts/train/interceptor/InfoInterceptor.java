package com.shawn.struts.train.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import com.shawn.struts.train.action.GetBooksAction;

public class InfoInterceptor extends MethodFilterInterceptor {

	@Override
	protected String doIntercept(ActionInvocation ai) throws Exception {
		GetBooksAction gba = (GetBooksAction)ai.getAction();
		gba.setIntercepterMsg("我是来自拦截器的消息");
		return ai.invoke();
	}
}
