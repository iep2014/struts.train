<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>s:itertor标签测试</title>
</head>
<body>
	<table border="1" width="150">
		<s:iterator value="{'aaa','bbb','ccc'}" id="name" status="st">
			<tr <s:if test="#st.odd">style="background-color:#bbbbbb"</s:if>>
				<td><s:property value="name" /></td>
			</tr>
		</s:iterator>
	</table>
	----------------------------------------------------------------------
	<s:set name="books" value="{'eee','fff','ggg'}"></s:set>
	<table border="1" width="150">
		<s:iterator value="books" id="name2" status="st">
			<tr <s:if test="#st.odd">style="background-color:#bbbbbb"</s:if>>
				<td><s:property value="name2" /></td>
			</tr>
		</s:iterator>
	</table>
	-----------------------------------------------------------------------
	<s:set name="chengji" value="#{'语文':80 , '数学':49}"></s:set>
	<table border="1" width="100">
		<s:iterator value="chengji" id="score" status="st">
			<tr <s:if test="#st.odd">style="background-color:#bbbbbb"</s:if>>
				<td><s:property value="key" /></td>
				<td><s:property value="value" /></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>
