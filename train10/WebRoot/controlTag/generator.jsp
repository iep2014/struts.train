<%@ page contentType="text/html; charset=GBK" language="java"
	errorPage=""%>
<%@taglib prefix="s" uri="/struts-tags"%>
<head>
<title>ʹ��s:generator���ɼ���</title>
</head>
<body>
	<s:debug />

	<s:generator val="'a,b, c'" separator="," id="iter1">
	</s:generator>
	ʹ��generator��ǩ��ָ���ַ���������List����0
	<table border="1" width="240">
		<!-- ��generator��ǩ�ڣ��õ���List����λ��ValueStack���� -->
		<s:generator val="'Struts 2Ȩ��ָ��,������Java EE��ҵӦ��ʵս,
	���Ajax����'"
			separator="," id="iter">
			<!-- û��ָ�������ĸ����ϣ�ֱ�ӵ���ValueStack���˵ļ��� -->
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
	<BR> ʹ��generator��ǩ��ָ���ַ���������List����1
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
	<BR> ʹ��generator��ǩ��ָ���ַ���������List����2
	<table border="1" width="240">
		<s:iterator status="st" value="#iter1" id="name">
			<tr <s:if test="#st.odd">style="background-color:#bbbbbb"</s:if>>
				<td><s:property value="name" /></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>
