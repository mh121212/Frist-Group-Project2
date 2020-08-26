<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="entity.AdminInfo"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UpdateAdminMessage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/Back.css">
	<script type="text/javascript">
		function checkPassword2()
		{
			var password1 = document.form1.password1.value;
			var password2 = document.form1.password2.value;
			if(password2=="")
			{
				document.getElementById("password2Span").innerHTML = "请输入新密码！";
				return false;
			}
			else {
				document.getElementById("password2Span").innerHTML = "^0^";
				return true;
			}
		}
		function checkForm() {
			if(checkPassword2()) {
				return true;	//允许表单提交
			}
			else{
				return false;
			}
		}
	</script>

  </head>
  
  <body>
    <%
	AdminInfo a=(AdminInfo)request.getAttribute("admin");
	%>
	<form name="form1" action="/Kasios/BackServlet?op=UpdateAdmin" method="post" onsubmit="return checkForm();">
	  <table border="0" align="center" width="300px;" height="300px;">
	  	<tr style="color: skyblue;"><th align="left"><img  src="image/xinxi.jpg">编辑基本信息</th></tr>
	  	<tr><td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;编&nbsp;&nbsp;&nbsp;&nbsp;号：<input type="text" style="border: solid 1px skyblue;" name="id" readonly="readonly" value="<%= a.getAdmin_id() %>"/></td></tr>
	  	<tr><td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;帐&nbsp;&nbsp;&nbsp;&nbsp;号：<input type="text" style="border: solid 1px skyblue;" value="<%=a.getAdmin_account() %>" name="account"/></td></tr>
	  	<tr><td><img src="image/mima.jpg">原密码：<input type="password" name="password1" value="<%= a.getAdmin_pass() %>" style="width: 131px;background-color: #FFEDFE;border: solid 1px skyblue;"/></td></tr>
	  	<tr>
	  		<td>
	  			<img src="image/mima.jpg">新密码：<input type="password" onblur="checkPassword2()" name="password2" style="width: 131px;background-color: #FFEDFE;border: solid 1px skyblue;"/>
	  			<span id="password2Span" style="font-size:12px;color:red;"></span>
	  		</td>
	  	</tr>
	  	<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;&nbsp;&nbsp;称：<input type="text" name="name" style="border: solid 1px skyblue;" value="<%=a.getAdmin_name() %>"/></td></tr>
	  	<tr><td><input type="submit" value="确认修改"/></td></tr>
	  </table>
    </form>
  </body>
</html>
