<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>ʹ��s:bean��ǩ����JavaBean��ʵ��</title>
</head>
<body>
	<s:bean name="com.shawn.bean.Person" id="p">
		<s:param name="name" value="'shawn'" />
		<s:param name="age" value="100" />
	</s:bean>

	������<s:property value="#p.name" />
	<br>
	���䣺<s:property value="#p.age" />
</body>
</html>
