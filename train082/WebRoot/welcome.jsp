<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>转换成功</title>
</head>
<body>
	转换成功!
	<br> 用户1的用户名为:
	<s:property value="users['0'].name" />
	<br> 用户1的密码为：
	<s:property value="users['0'].pass" />
	<br> 用户2的用户名为:
	<s:property value="users['1'].name" />
	<br> 用户2的密码为：
	<s:property value="users['1'].pass" />
	<br>

	<table>
		<s:iterator value="users" status="st">
			<tr>
				<td>用户<s:property value="#st.index" />名：<s:property
						value="value.name" /></td>
			</tr>
			<tr>
				<td>用户<s:property value="#st.index" />密码：<s:property
						value="value.pass" /></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>
