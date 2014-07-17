<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>使用s:url来生成一个URL地址</title>
</head>
<body>
	<h2>s:url来生成一个URL地址</h2>
	只指定value属性的形式。
	<br>
	<s:url value="editGadget.action" />
	<hr>
	指定action属性,且使用param传入参数的形式。
	<br>
	<s:url action="showBook">
		<s:param name="author" value="'yeeku'" />
	</s:url>
	<hr>
</body>
</html>
