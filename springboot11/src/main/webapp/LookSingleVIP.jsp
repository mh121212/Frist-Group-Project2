<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="entity.UserInfo"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'LookSingleVIP.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/Back.css">

  </head>
  
  <body>
  <%
  UserInfo user=(UserInfo)request.getAttribute("UserInfo");
  %>
    <table bordercolor="#EDEDED" cellpadding="0px" cellspacing="0px" border="1" align="center" height="400px" width="350px">
    <tr><th colspan="2" style="background-color: #f5f8fd;">VIP会员基本信息</th></tr>
    <tr><td style="background-color: #f5f8fd;" align="right">会员编号：</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<%= user.getUser_id() %></td></tr>
    <tr><td style="background-color: #f5f8fd;" align="right">会员帐号：</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<%= user.getUser_account() %></td></tr>
    <tr><td style="background-color: #f5f8fd;" align="right">会员呢称：</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<%= user.getUser_name() %></td></tr>
    <tr><td style="background-color: #f5f8fd;" align="right">会员性别：</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<%= user.getUser_sex() %></td></tr>
    <tr><td style="background-color: #f5f8fd;" align="right">会员生日：</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<%= user.getUser_birthday() %></td></tr>
    <tr><td style="background-color: #f5f8fd;" align="right">会员头像：</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<img src="<%= user.getUser_photo() %>"/></td></tr>
    <tr><td style="background-color: #f5f8fd;" align="right">会员积分：</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<%= user.getUser_point() %></td></tr>
    <tr align="right"><th style="background-color: #f5f8fd;" colspan="2"><a style="color: green;" href="/Kasios/BackServlet?op=VIPMessage">【返回】</a></th></tr>
    </table>
  </body>
</html>
