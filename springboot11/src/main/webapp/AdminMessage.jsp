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
    
    <title>My JSP 'AdminMessage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	*
	{
		font-size: 12px;
	}
	</style>
  </head>
  
  <body>
  <%
  AdminInfo a=(AdminInfo)request.getAttribute("adminId");
  %>
  <table border="1" bordercolor="#EDEDED" width="300px" height="250px" align="center" cellpadding="0px" cellspacing="0px">
  	<tr><th style="background-color: #f5f8fd;" colspan="2"><img src="image/xinxi.jpg">管理员基本资料</th></tr>
  	<tr><td style="background-color: #f5f8fd; width: 30%;" align="right"> 编号：</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<%=a.getAdmin_id() %></td></tr>
  	<tr><td style="background-color: #f5f8fd;" align="right"> 帐号：</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<%=a.getAdmin_account() %></td></tr>
  	<tr><td style="background-color: #f5f8fd;" align="right"><img src="image/mima.jpg">密码：</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<%=a.getAdmin_pass() %></td></tr>
  	<tr><td style="background-color: #f5f8fd;" align="right">名称：</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<%=a.getAdmin_name() %></td></tr>
  	<tr>
	  	<td style="background-color: #f5f8fd;" colspan="2">
		  	<a style="background-color: #f5f8fd;text-decoration: none;color: green;" href="/Kasios/BackServlet?op=UpdateAdminMessage&id=<%= a.getAdmin_id() %>">
			  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  	修改资料
		  	</a>
	  	</td>
  	</tr>
  </table>
  </body>
  
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
</html>
