<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="entity.ProductType"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'InsertProduct.jsp' starting page</title>
    
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
  	  <form action="/Kasios/BackServlet?op=InsertProductMsg" method="post">
	  <table border="0" align="center" width="500px" height="350px">
	  	<tr>
	  		<td style="color: background;">产品编号：<input type="text" style="border:solid 1px lightskyblue;" name="no"/></td>
	  		<td style="color: background;">产品名称：&nbsp;&nbsp;<input type="text" style="border:solid 1px lightskyblue;" name="name"/></td>
	  	</tr>
	  	<tr>
		  	<td style="color: background;">库存数量：<input type="text" style="border:solid 1px lightskyblue;" name="allnum"/></td>
		  	<td style="color: background;">
		  		产品类型：
		  		<select name="type" style="width: 133px;border: solid 1px lightskyblue;">
				<%
					List<ProductType> list = (List<ProductType>)request.getAttribute("ptlist");
				  	for(ProductType pt : list) 
				  	{
   				%>
						<option style="border: solid 1px lightskyblue;" value="<%=pt.getPt_id() %>"><%=pt.getPt_name()%></option>
   				<%
   					}
   				%>
				</select>
		  	</td>
	  	</tr>
	  	<tr>
		  	<td colspan="2" style="color: background;">已售数量：<input type="text" value="0" style="border:solid 1px lightskyblue;" name="soldnum"/></td>
	  	</tr>
	  	<tr>
	  		<td colspan="2" style="color: background;">产品价格：<input type="text" style="border:solid 1px lightskyblue;" name="price"/></td>
	  	</tr>
	  	<tr>
	  		<td colspan="2" style="color: background;">
	  			产品图片：	
   			    <input type="hidden" name="imgName" id="imgName" value="./img/p01.jpg"/>
				<img width="80" height="80" id="headImg" src="./img/p01.jpg">
				<a href="javascript:showHeadChoice()" style="color:background;">选择图片</a>
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
	  	<tr>
	  		<td colspan="2" style="color: background;">产品描述：<textarea name="desc" style="width: 300px;height: 70px;border: solid 1px lightskyblue;"></textarea></td>
	  	</tr>
	  	<tr><td colspan="2"><input type="submit" style="color:background;border: solid 1px skyblue;background-color: white;" value="确认添加新产品"/></td></tr>
	  </table>
	  </form>
  </body>
</html>
