<%@ page language="java" contentType="text/html; charset=GBK"%>
<script>
	function myfunc(param) {
		
		targetForm = document.forms[0];
		targetForm.action = param;
		targetForm.submit();
	}
</script>
<html>
<head>
<title>��½ҳ��</title>
</head>
<body>
	<table width="300" align="center">
		<form action="Login.action" method="post">
			<tr>
				<td>�û���:</td>
				<td><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>��&nbsp;&nbsp;��:</td>
				<td><input type="text" name="password" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="��½" onClick="myfunc('Login');"/></td>
				<td><input type="button" value="ע��" onClick="myfunc('Regist');" /></td>
			</tr>
		</form>
		<table>
</body>
</html>
