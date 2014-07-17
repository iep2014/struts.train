<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>使用s:set设置一个新变量</title>
</head>
<body>
	<h2>使用s:set设置一个新变量</h2>
	<s:bean name="com.shawn.bean.Person" id="p">
		<s:param name="name" value="'shawn'" />
		<s:param name="age" value="100" />
	</s:bean>
	将Stack Context中的p值放入默认范围内。
	<br>
	<s:set value="#p" name="xxx" />
	<s:property value="#xxx.name" />
	<br>
	<s:property value="#xxx.age" />
	---------------------------------------------------
	<br> 将Stack Context中的p值放入application范围内。
	<br>
	<s:set value="#p" name="xxx" scope="application" />
	<s:property value="#attr.xxx.name" />
	<br>
	<s:property value="#attr.xxx.age" />
	<br> ${applicationScope.xxx.name }
	<br> ${applicationScope.xxx.age }
	<br> ---------------------------------------------------
	<br> 将Stack Context中的p值放入session范围内。
	<br>
	<s:set value="#p" name="xxx" scope="session" />
	${sessionScope.xxx.name}
	<br> ${sessionScope.xxx.age}
	<br>
</body>
</html>
