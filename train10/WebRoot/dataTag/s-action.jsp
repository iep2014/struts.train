<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>使用s:action标签在页面中调用Action</title>
</head>
<body>
	下面调用第一个Action，并将结果包含到本页面中。
	<br>
	<s:action name="tag1" executeResult="true" />
	<hr />
	下面调用第二个Action，并将结果包含到本页面中。
	<br> 并且阻止本页面请求参数传入Action。
	<br>
	<s:action name="tag2" executeResult="true" ignoreContextParams="false" />
	<hr />
	下面调用第二个Action，且并不将结果包含到本页面中。
	<br>
	<s:action name="tag2" executeResult="false" />
	<s:property value="#attr.author" />
</body>
</html>
