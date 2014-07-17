<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>使用s:push来将某个值放入ValueStack的栈顶</title>
</head>
<body>
	<h2>使用s:push来将某个值放入ValueStack的栈顶</h2>
	<s:bean name="com.shawn.bean.Person" id="p">
		<s:param name="name" value="'shawn'" />
		<s:param name="age" value="100" />
	</s:bean>
	<s:push value="#p">
		<s:property value="name" />
		<br>
		<s:property value="age" />
		<br>
	</s:push>

</body>
</html>
