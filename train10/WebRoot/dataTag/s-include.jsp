<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>ʹ��s:include��ǩ������Ŀ��ҳ��</title>
</head>
<body>
	<h2>ʹ��s:include��ǩ������Ŀ��ҳ��</h2>
	<s:include value="include-file.jsp" />
	<s:include value="include-file.jsp">
		<s:param name="author" value="'yeeku'" />
	</s:include>
</body>
</html>
