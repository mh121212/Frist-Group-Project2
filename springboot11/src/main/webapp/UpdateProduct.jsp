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
    
    <title>My JSP 'UpdateProduct.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/Back.css">
	
	<script type="text/javascript">
		function changeHead(imgName)
		{
			var str=imgName;
			var headImg = document.getElementById("headImg");
			headImg.src = "./img/"+str;
			var imgName = document.getElementById("imgName");
			imgName.value = "./img/"+str;
			var headChoiceTable = document.getElementById("headChoiceTable");
			headChoiceTable.style.display = "none";
		}
		function showHeadChoice()
		{
			var headChoiceTable = document.getElementById("headChoiceTable");
			headChoiceTable.style.display = "block";
		}
	</script>
  </head>
  
  <body>
  <%
  Product pro=(Product)request.getAttribute("Product");
  %>
  
  	<form action="BackServlet?op=UpdateProduct" method="post">
    <table border="0" align="center">
      <tr>
      	<td colspan="2"><input type="hidden" name="id" value="<%= pro.getPro_id() %>"/></td>
      </tr>
      <tr>
      	<td><input type="hidden" name="id" value="<%= pro.getPro_id() %>"/>产品编号：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="no" value="<%= pro.getPro_no() %>"></td>
      	<td>产品名称：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name" value="<%= pro.getPro_name() %>"></td>
      </tr>
      <tr>
      	<td>库存数量：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="allnum" value="<%= pro.getPro_stock() %>"></td>
      	<td>产品类型：<input type="hidden" name="type" value="<%= pro.getPro_type() %>"/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" readonly="readonly" value="<%= pro.getType().getPt_name() %>"></td>
      </tr>
	  <tr><td colspan="2">已售数量：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sold" value="<%= pro.getPro_sold() %>"></td></tr>
	  <tr><td colspan="2">产品价格：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="price" value="<%= pro.getPro_price() %>"></td></tr>
	  <tr>
		  <td colspan="2">
		    	产品图片：	
   			    <input type="hidden" name="imgName" id="imgName" value="<%= pro.getPro_img() %>"/>
				<img width="80" height="80" id="headImg" src="<%= pro.getPro_img() %>">
				<a href="javascript:showHeadChoice()">图片是否有变动?</a>
				<br>
				<table style="display: none" id="headChoiceTable">
					<tr>
						<td><img width="80" height="80" src="./img/p01.jpg" onclick="changeHead('p01.jpg')"/></td>
						<td><img width="80" height="80" src="./img/p02.jpg" onclick="changeHead('p02.jpg')"/></td>
						<td><img width="80" height="80" src="./img/p03.jpg" onclick="changeHead('p03.jpg')"/></td>
						<td><img width="80" height="80" src="./img/p04.jpg" onclick="changeHead('p04.jpg')"/></td>
					</tr>
					<tr>
						<td><img width="80" height="80" src="./img/p05.jpg" onclick="changeHead('p05.jpg')"/></td>
						<td><img width="80" height="80" src="./img/p06.jpg" onclick="changeHead('p06.jpg')"/></td>
						<td><img width="80" height="80" src="./img/p07.jpg" onclick="changeHead('p07.jpg')"/></td>
						<td><img width="80" height="80" src="./img/p08.jpg" onclick="changeHead('p08.jpg')"/></td>
					</tr>
				</table>
		  </td>
	  </tr>
	  <tr><td colspan="2">上架时间：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="time" value="<%= pro.getPro_time() %>"></td></tr>
	  <tr><td colspan="2">产品描述：&nbsp;&nbsp;&nbsp;&nbsp;<textarea name="desc" style="height: 100px;"><%= pro.getPro_desc() %></textarea></td></tr>
	  <tr>
	  	<td colspan="2">
	  		<input type="submit" value="确认修改"/>&nbsp;&nbsp;&nbsp;&nbsp;
	  		<a style="color: green;" href="/Kasios/BackServlet?op=LookProduct">【返回】</a>
	  	</td>
	  </tr>
   </table>
   </form>
  </body>
</html>
