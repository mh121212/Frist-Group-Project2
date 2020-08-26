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
    
    <title>My JSP 'VIPMessage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/Back.css">
	<script type="text/javascript">
		function gotoPageNo() {
			var pageNo = document.getElementById("txtPageNo").value;
			
			location.href = "BackServlet?op=VIPMessage&pageNo=" + pageNo;
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
  
  <table width="100%" bordercolor="powderblue" border="1" height="200px" align="center" cellpadding="0px" cellspacing="0px">
    	<tr>
    		<th style="background-color: skyblue;">VIP编号</th>
    		<th style="background-color: skyblue;">帐号</th>
    		<th style="background-color: skyblue;">呢称</th>
    		<th style="background-color: skyblue;">积分</th>
    		<th style="background-color: skyblue;">操作</th>
    	</tr>
    	<%
    	
    		int rowPerPage = (Integer)request.getAttribute("VIPRowPerPage");
    		int rowCount = (Integer)request.getAttribute("VIPRowCount");
    		int pageCount = (Integer)request.getAttribute("VIPPageCount");
    		int pageNo = (Integer)request.getAttribute("VIPPageNo");
    		
    		List<UserInfo> list = (List<UserInfo>)request.getAttribute("VIPList");
    		for(UserInfo u : list) {
    	%>
    			<tr align="center" style="background-color: seashell;" onmousemove='this.style.backgroundColor="#FFCCCC"' onmouseout='this.style.backgroundColor="seashell"'>
		    		<td><%=u.getUser_id() %></td>
		    		<td><%=u.getUser_account() %></td>
		    		<td><%=u.getUser_name() %></td>
		    		<td><%=u.getUser_point() %></td>
		    		<td>
		    			<a style="color: green;" href="/Kasios/BackServlet?op=LookSingleVIP&id=<%=u.getUser_id() %>">查看</a>
		    			<a style="color: green;" href="/Kasios/BackServlet?op=DeleteVIP&id=<%=u.getUser_id() %>">删除</a>
		    		</td>
		    	</tr>
    	<%
    		}
    	%>
    	
    	<tr align="center">
    		<td colspan="5">
    			总记录数：<%=rowCount %>条
    			每页显示：<%=rowPerPage %>条
    			当前页数：<%=pageNo %> / <%=pageCount %> 页
    			<a href="BackServlet?op=VIPMessage&pageNo=1">首页</a>
    			<a href="BackServlet?op=VIPMessage&pageNo=<%=pageNo-1 %>">上一页</a>
    			<a href="BackServlet?op=VIPMessage&pageNo=<%=pageNo+1 %>">下一页</a>
    			<a href="BackServlet?op=VIPMessage&pageNo=<%=pageCount %>">末页</a>
    			
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
