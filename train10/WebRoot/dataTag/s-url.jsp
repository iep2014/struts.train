<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>ʹ��s:url������һ��URL��ַ</title>
</head>
<body>
	<h2>s:url������һ��URL��ַ</h2>
	ָֻ��value���Ե���ʽ��
	<br>
	<s:url value="editGadget.action" />
	<hr>
	ָ��action����,��ʹ��param�����������ʽ��
	<br>
	<s:url action="showBook">
		<s:param name="author" value="'yeeku'" />
	</s:url>
	<hr>
</body>
</html>
