<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>数组属性的类型转换器</title>
</head>
<body>
	<form action="login.action" method="post">
		<table align="center" width="360">
			<caption>
				<h3>数组属性的类型转换器</h3>
			</caption>
			<s:iterator value="new int[2]" status="st">
				<tr align="center">
					<td><s:textfield label="用户"
							name="%{'users['+#st.index+'].name'}"></s:textfield></td>
				</tr>
				<tr align="center">
					<td><s:password label="密码"
							name="%{'users['+#st.index+'].pass'}"></s:password></td>
				</tr>
			</s:iterator>

			<tr>
				<td><input type="submit" value="转换" /><input type="reset"
					value="重填" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
