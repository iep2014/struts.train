<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<script>
	function myfunc(param) {
		targetForm = document.forms[0];
		targetForm.action = param;
		targetForm.submit();
	}
</script>
<html>
<head>
<title>登陆页面</title>
</head>
<body>
	<table width="300" align="center">
		<form method="post">
			<tr>
				<td>用户名:</td>
				<td><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>密&nbsp;&nbsp;码:</td>
				<td><input type="text" name="password" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="登陆"
					onClick="myfunc('myAction!login');" /></td>
				<td><input type="button" value="注册"
					onClick="myfunc('myAction!regist');" /></td>
			</tr>
		</form>
		<table>
</body>
</html>
