<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>s:if±Í«©≤‚ ‘</title>
</head>
<body>
	<s:set name="a" value="59" />
	<s:if test="%{#a > 60}">
	    a > 60
	</s:if>
	<s:elseif test='%{#a > 40}'>
	    a > 40
	</s:elseif>
	<s:else>
		a < 40
	</s:else>
</body>
</html>
