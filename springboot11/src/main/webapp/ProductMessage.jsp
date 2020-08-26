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
    
    <title>My JSP 'ProductMessage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/Back.css">
	
	<script type="text/javascript">
		function gotoPageNo() {
			var pageNo = document.getElementById("txtPageNo").value;
			
			location.href = "BackServlet?op=LookProduct&pageNo=" + pageNo;
		}
		
		function checkIsEnter() {
			var keyCode = event.keyCode;
			if(keyCode==13) {
				gotoPageNo();
			}
		}
	</script>
  </head>
  
  <body>
  	<table width="100%" height="50px">
  		<tr align="right">
  			<th>
  				<a style="color: green;" href="/Kasios/BackServlet?op=InsertProduct">【新产品上市】</a>
  			</th>
  		</tr>
  	</table>
    <table border="1" bordercolor="powderblue" align="center" width="100%" height="250px" cellpadding="0px" cellspacing="0px">
    	<tr>
    		<th style="background-color: skyblue;">产品编号</th>
    		<th style="background-color: skyblue;">产品名称</th>
    		<th style="background-color: skyblue;">类型</th>
    		<th style="background-color: skyblue;">上市时间</th>
    		<th style="background-color: skyblue;">库存</th>
    		<th style="background-color: skyblue;">已售</th>
    		<th style="background-color: skyblue;">单价</th>
    		<th style="background-color: skyblue;">操作</th>
    	</tr>
    	<%
    	
    		int rowPerPage = (Integer)request.getAttribute("ProductRowPerPage");
    		int rowCount = (Integer)request.getAttribute("ProductRowCount");
    		int pageCount = (Integer)request.getAttribute("ProductPageCount");
    		int pageNo = (Integer)request.getAttribute("ProductPageNo");
    		
    		List<Product> list = (List<Product>)request.getAttribute("ProductList");
    		for(Product p : list) {
    	%>
    			<tr align="center" style="background-color: seashell;" onmousemove='this.style.backgroundColor="#FFCCCC"' onmouseout='this.style.backgroundColor="seashell"'>
		    		<td><%=p.getPro_no() %></td>
		    		<td><%=p.getPro_name() %></td>
		    		<td><%=p.getType().getPt_name() %></td>
		    		<td><%=p.getPro_time() %></td>
		    		<td><%=p.getPro_stock() %></td>
		    		<td><%=p.getPro_sold() %></td>
		    		<td><%=p.getPro_price() %></td>
		    		<td>
			    		<a style="color: green;" href="BackServlet?op=LookSingleProduct&id=<%= p.getPro_id() %>">查看</a>
			    		<a style="color: green;" href="BackServlet?op=LUProduct&id=<%= p.getPro_id() %>">编辑</a>
			    		<a style="color: green;" href="BackServlet?op=DeleteProduct&id=<%= p.getPro_id() %>">删除</a>
		    		</td>
		    	</tr>
    	<%
    		}
    	%>
    	
    	<tr align="center">
    		<td colspan="8">
    			总记录数：<%=rowCount %>条
    			每页显示：<%=rowPerPage %>条
    			当前页数：<%=pageNo %> / <%=pageCount %> 页
    			<a href="BackServlet?op=LookProduct&pageNo=1">首页</a>
    			<a href="BackServlet?op=LookProduct&pageNo=<%=pageNo-1 %>">上一页</a>
    			<a href="BackServlet?op=LookProduct&pageNo=<%=pageNo+1 %>">下一页</a>
    			<a href="BackServlet?op=LookProduct&pageNo=<%=pageCount %>">末页</a>
    			
    			输入页数：<input type="text" id="txtPageNo" value="<%=pageNo %>" size="2" onkeydown="checkIsEnter()" />
    			<input type="button" value="跳转" onclick="gotoPageNo()" />
    		</td>
    	</tr>
    	
    </table>
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
