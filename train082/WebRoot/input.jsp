<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>�������Ե�����ת����</title>
</head>
<body>
	<form action="login.action" method="post">
		<table align="center" width="360">
			<caption>
				<h3>�������Ե�����ת����</h3>
			</caption>
			<s:iterator value="new int[2]" status="st">
				<tr align="center">
					<td><s:textfield label="�û�"
							name="%{'users['+#st.index+'].name'}"></s:textfield></td>
				</tr>
				<tr align="center">
					<td><s:password label="����"
							name="%{'users['+#st.index+'].pass'}"></s:password></td>
				</tr>
			</s:iterator>

			<tr>
				<td><input type="submit" value="ת��" /><input type="reset"
					value="����" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
