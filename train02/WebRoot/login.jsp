<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>登录页面</title>
</head>
<body>
	<s:form action="Login">
		<s:textfield name="username" key="user" />
		<s:textfield name="password" key="pass" />
		<s:submit key="login" />
	</s:form>
</body>
</html>
