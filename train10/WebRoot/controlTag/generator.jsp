<%@ page contentType="text/html; charset=GBK" language="java"
	errorPage=""%>
<%@taglib prefix="s" uri="/struts-tags"%>
<head>
<title>使用s:generator生成集合</title>
</head>
<body>
	<s:debug />

	<s:generator val="'a,b, c'" separator="," id="iter1">
	</s:generator>
	使用generator标签将指定字符串解析成List集合0
	<table border="1" width="240">
		<!-- 在generator标签内，得到的List集合位于ValueStack顶端 -->
		<s:generator val="'Struts 2权威指南,轻量级Java EE企业应用实战,
	疯狂Ajax讲义'"
			separator="," id="iter">
			<!-- 没有指定迭代哪个集合，直接迭代ValueStack顶端的集合 -->
			<s:iterator status="st">
				<tr <s:if test="#st.odd">style="background-color:#bbbbbb"</s:if>>
					<td><s:property /></td>
				</tr>
			</s:iterator>
		</s:generator>
	</table>

	<BR>
	<BR>
	<BR>
	<BR> 使用generator标签将指定字符串解析成List集合1
	<table border="1" width="240">
		<s:iterator status="st" value="#request.iter1" id="name">
			<tr <s:if test="#st.odd">style="background-color:#bbbbbb"</s:if>>
				<td><s:property value="name" /></td>
			</tr>
		</s:iterator>
	</table>

	<BR>
	<BR>
	<BR>
	<BR> 使用generator标签将指定字符串解析成List集合2
	<table border="1" width="240">
		<s:iterator status="st" value="#iter1" id="name">
			<tr <s:if test="#st.odd">style="background-color:#bbbbbb"</s:if>>
				<td><s:property value="name" /></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>
