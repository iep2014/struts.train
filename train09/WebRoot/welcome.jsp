<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title><s:text name="succPage" /></title>
</head>
<body>
	��ã�
	<s:property value="username" />
	<br>
	<a href="GetBooks.action">�鿴�Ĵ�����</a>
	<br>
	<a href="GetBooks!getInfo1.action">�鿴��ͨ��Ϣ1</a>
	<br>
	<a href="GetBooks!getInfo2.action">�鿴��ͨ��Ϣ2</a>
</body>
</html>