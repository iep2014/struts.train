<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title><s:text name="succPage" /></title>
</head>
<body>
	你好：
	<s:property value="username" />
	<br>
	<a href="GetBooks.action">查看四大名著</a>
	<br>
	<a href="GetBooks!getInfo1.action">查看普通消息1</a>
	<br>
	<a href="GetBooks!getInfo2.action">查看普通消息2</a>
</body>
</html>