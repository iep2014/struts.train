<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>使用s:checkboxlist生成多个复选框</title>
<s:head />

</head>
<body>
	<h3>使用s:checkboxlist生成多个复选框</h3>
	<s:form>
		<!-- 使用简单集合来生成多个复选框 -->
		<s:checkboxlist name="a" label="请选择您喜欢的图书" labelposition="top"
			list="{'Spring2.0宝典' , '轻量级J2EE企业应用实战' , '基于J2EE的Ajax宝典'}" />
		<!-- 使用简单Map对象来生成多个复选框 -->
		<s:checkboxlist name="b" label="请选择您想选择出版日期" labelposition="top"
			list="#{'Spring2.0宝典':'2006年10月' , '轻量级J2EE企业应用实战':'2007月4月' , '基于J2EE的Ajax宝典':'2007年6月'}"
			listKey="key" listValue="value" />
		<s:bean name="com.shawn.service.BookService" id="bs" />
		<!-- 使用集合里放多个JavaBean实例来生成多个复选框 -->
		<s:checkboxlist name="b" label="请选择您喜欢的图书" labelposition="top"
			list="#bs.books" listKey="author" listValue="name" />
	</s:form>
</body>
</html>
