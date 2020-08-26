<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
  <title>领航教育后台管理系统</title>
</head>
<style type="text/css">
  *
  {
	  background-color: lightcyan;
	  font-size: 16px;
  }
	tr{
		line-height: 40px;
	}
</style>
<body>
<form action="#" method="post">
<table align="center" border="0" style="width:300px; margin-top:50px;">
	<tr align="center">
		<td style="font-size:24px;">领航教育后台管理平台登录</td>
	</tr>
	<tr><td><hr style="color: skyblue;"/></td></tr>
	<tr align="center"><td style="color: skyblue;">帐号：<input style="border: solid 1px skyblue;" type="text" name="account"/></td></tr>
	<tr align="center"><td style="color: skyblue;">密码：<input type="password" name="password" style="border: solid 1px skyblue;"/></td></tr>
	<tr><td><hr style="color: skyblue;"/></td></tr>
	<tr align="center">
		<td>
			<input type="submit" value="登录"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="重置"/>
		</td>
	</tr>
</table>
</form>
</body>
</html>