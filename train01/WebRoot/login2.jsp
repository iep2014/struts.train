<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>登录页面</title>
</head>
<body>
	<s:form action="Login.action">
		<s:textfield name="username" label="用户名" />
		<s:textfield name="password" label="密  码" />
		<s:submit value="登陆" />
	</s:form>
</body>
</html>
