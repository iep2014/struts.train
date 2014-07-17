<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>使用s:itertor标签迭代List</title>
</head>
<body>
	<table border="1" width="200">
		<s:iterator value="{'aaa','bbb','ccc'}" id="name" status="st">
			<tr>
				<td><s:property value="#st.count" /> <s:property value="name" /></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>
