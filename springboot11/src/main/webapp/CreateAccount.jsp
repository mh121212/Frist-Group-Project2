<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'CreateAccount.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/Back.css">
	<script type="text/javascript">
		function checkAccount()
		{
			var account = document.form1.account.value;
			if(account=="") {
				document.getElementById("accountSpan").innerHTML = "请输入帐号！";
				return false;	//阻止表单提交
			}
			else {
				document.getElementById("accountSpan").innerHTML = "^0^";
				return true;
			}
		}
		function checkPassword1()
		{
			var password1 = document.form1.password1.value;
			if(password1=="")
			{
				document.getElementById("password1Span").innerHTML = "请输入密码！";
				return false;
			}
			else {
				document.getElementById("password1Span").innerHTML = "^0^";
				return true;
			}
		}
		function checkPassword2()
		{
			var password1 = document.form1.password1.value;
			var password2 = document.form1.password2.value;
			if(password2=="")
			{
				document.getElementById("password2Span").innerHTML = "请输入确认密码！";
				return false;
			}
			if(password1!=password2)
			{
				document.getElementById("password2Span").innerHTML = "两次密码不一致！";
				return false;
			}
			else {
				document.getElementById("password2Span").innerHTML = "^0^";
				return true;
			}
		}
		function checkName()
		{
			var name = document.form1.name.value;
			if(name=="")
			{
				document.getElementById("nameSpan").innerHTML = "请输入姓名！";
				return false;
			}
			else {
				document.getElementById("nameSpan").innerHTML = "^0^";
				return true;
			}
		}
		
		function checkForm() {
			if(checkAccount()&& checkPassword1()&& checkPassword2()&& checkName()) {
				return true;	//允许表单提交
			}
			else{
				return false;
			}
		}
	</script>
  </head>
  
  <body>
  <form name="form1" action="BackServlet?op=CreateAccount" method="post" onsubmit="return checkForm();">
  <table border="0" width="400px" align="center" height="300px">
  	<tr align="left"><th style="color:#3A6EA5;"><img src="image/zhuce.jpg">管理员注册</th></tr>
  	<tr>
  		<td style="color: darkcyan">
  			帐&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：          <input type="text" style="border: solid 1px darkcyan;" onblur="checkAccount()" name="account"/>
  			<span id="accountSpan" style="font-size:12px;color:red;"></span>
  		</td>
  	</tr>
  	<tr>
	  	<td style="color: darkcyan">
	  		密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：          <input type="password" onblur="checkPassword1()" style="width: 131px;border: solid 1px darkcyan;" name="password1"/>
	  		<span id="password1Span" style="font-size:12px;color:red;"></span>
	  	</td>
  	</tr>
  	<tr>
	  	<td style="color: darkcyan">
	  		确认密码：          <input type="password" onblur="checkPassword2()" style="width:131px;border:solid 1px darkcyan" name="password2"/>
	  		<span id="password2Span" style="font-size:12px;color:red;"></span>
	  	</td>
  	</tr>
  	<tr>
	  	<td style="color: darkcyan">
	  		名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：          <input type="text" style="border: solid 1px darkcyan;" onblur="checkName()" name="name"/>
	  		<span id="nameSpan" style="font-size:12px;color:red;"></span>
	  	</td>
  	</tr>
  	<tr>
	  	<td>
		  	<input type="submit" style="background-color: white;border: solid 1px darkcyan;color: darkcyan;" value="确认注册"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  	<input type="reset" style="background-color: white;border: solid 1px darkcyan;color: darkcyan;" value="重新填写"/>
	  	</td>
  	</tr>
  </table>
  </form>
   <%
    	String tip = (String)session.getAttribute("tip");
    	if(tip!=null) {
    		session.removeAttribute("tip");
    %>
    		<script type="text/javascript">
    		alert("<%= tip%>");
    		</script>
    <%
    	}
    %>
  </body>
</html>
