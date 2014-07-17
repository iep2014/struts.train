<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title><s:text name="succPage" /></title>
</head>
<body>
	拦截器消息:
	<s:property value="intercepterMsg" />
	<br> 普通消息：
	<s:property value="infoMsg" />
</body>
</html>