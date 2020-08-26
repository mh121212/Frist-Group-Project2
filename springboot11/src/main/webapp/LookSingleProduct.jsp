<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="entity.Product"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'LookSingleProduct.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/Back.css">

  </head>
  
  <body>
  
  <%
  Product pro=(Product)request.getAttribute("Product");
  %>
  
  <table border="0" height="400px" cellpadding="0px" cellspacing="0px" align="center">
  <tr>
  	<td colspan="2">产品编号：&nbsp;&nbsp;&nbsp;&nbsp;<%= pro.getPro_no() %></td>
  </tr>
  <tr>
  	<td>产品名称：&nbsp;&nbsp;&nbsp;&nbsp;<%= pro.getPro_name() %></td>
  	<td>产品类型：&nbsp;&nbsp;&nbsp;&nbsp;<%= pro.getType().getPt_name() %></td>
  </tr>
  <tr>
  	<td>库存数量：&nbsp;&nbsp;&nbsp;&nbsp;<%= pro.getPro_stock() %></td>
  	<td>已售数量：&nbsp;&nbsp;&nbsp;&nbsp;<%= pro.getPro_sold() %></td>
  </tr>
  <tr><td colspan="2">产品价格：&nbsp;&nbsp;&nbsp;&nbsp;<%= pro.getPro_price() %></td></tr>
  <tr><td colspan="2">产品图片：&nbsp;&nbsp;&nbsp;&nbsp;<img width="150px" height="150px" src="<%= pro.getPro_img() %>"/></td></tr>
  <tr><td colspan="2">上架时间：&nbsp;&nbsp;&nbsp;&nbsp;<%= pro.getPro_time() %></td></tr>
  <tr>
  	<td colspan="2">
  		产品描述：&nbsp;&nbsp;&nbsp;&nbsp;<textarea readonly="readonly" style="width: 200px;height: 70px;"><%= pro.getPro_desc() %></textarea>
  		<a style="color: green;" href="/Kasios/BackServlet?op=LookProduct">【返回】</a>
    </td>
  </tr>
  </table>
  
  </body>
</html>
