<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>ת���ɹ�</title>
</head>
<body>
	ת���ɹ�!
	<br> �û�1���û���Ϊ:
	<s:property value="users['0'].name" />
	<br> �û�1������Ϊ��
	<s:property value="users['0'].pass" />
	<br> �û�2���û���Ϊ:
	<s:property value="users['1'].name" />
	<br> �û�2������Ϊ��
	<s:property value="users['1'].pass" />
	<br>

	<table>
		<s:iterator value="users" status="st">
			<tr>
				<td>�û�<s:property value="#st.index" />����<s:property
						value="value.name" /></td>
			</tr>
			<tr>
				<td>�û�<s:property value="#st.index" />���룺<s:property
						value="value.pass" /></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>
