<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <title>ת���ɹ�</title>
    </head>
    <body>
        ת���ɹ�!<br>
		�û�1���û���Ϊ:<s:property value="users[0].name"/><br>
		�û�1������Ϊ��<s:property value="users[0].pass"/><br>
		�û�2���û���Ϊ:<s:property value="users[1].name"/><br>
		�û�2������Ϊ��<s:property value="users[1].pass"/><br>
    </body>
</html>
