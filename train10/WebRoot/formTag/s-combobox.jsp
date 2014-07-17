<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>使用s:combobox生成下拉输入框</title>
<s:head />
</head>
<body>
	<h3>使用s:combobox生成下拉输入框</h3>
	<s:form>
		<s:combobox label="请选择您喜欢的图书" theme="css_xhtml" labelposition="top"
			list="{'Spring2.0宝典' , '轻量级J2EE企业应用实战' , '基于J2EE的Ajax宝典'}" size="20"
			maxlength="20" name="book" />
	</s:form>
</body>
</html>
