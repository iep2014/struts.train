package com.shawn.struts.train.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class MyInterceptor extends AbstractInterceptor {

	private static final long serialVersionUID = -3131093200007817033L;

	@Override
	public String intercept(ActionInvocation ai) throws Exception {

		Map<String, Object> session = ai.getInvocationContext().getSession();
		if (!session.isEmpty() && session.get("isLogined").equals("true")) {
			System.out.println("�û���¼�Ϸ�");
			return ai.invoke();
		} else {
			System.out.println("�û���¼�Ƿ�");
			return Action.LOGIN;
		}
	}
}
