<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>ʹ��s:set����һ���±���</title>
</head>
<body>
	<h2>ʹ��s:set����һ���±���</h2>
	<s:bean name="com.shawn.bean.Person" id="p">
		<s:param name="name" value="'shawn'" />
		<s:param name="age" value="100" />
	</s:bean>
	��Stack Context�е�pֵ����Ĭ�Ϸ�Χ�ڡ�
	<br>
	<s:set value="#p" name="xxx" />
	<s:property value="#xxx.name" />
	<br>
	<s:property value="#xxx.age" />
	---------------------------------------------------
	<br> ��Stack Context�е�pֵ����application��Χ�ڡ�
	<br>
	<s:set value="#p" name="xxx" scope="application" />
	<s:property value="#attr.xxx.name" />
	<br>
	<s:property value="#attr.xxx.age" />
	<br> ${applicationScope.xxx.name }
	<br> ${applicationScope.xxx.age }
	<br> ---------------------------------------------------
	<br> ��Stack Context�е�pֵ����session��Χ�ڡ�
	<br>
	<s:set value="#p" name="xxx" scope="session" />
	${sessionScope.xxx.name}
	<br> ${sessionScope.xxx.age}
	<br>
</body>
</html>
