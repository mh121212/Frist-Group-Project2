<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="entity.Replay"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'LookMessageAndReplay.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/Back.css">
	
	<script type="text/javascript">
		function gotoPageNo() {
			var pageNo = document.getElementById("txtPageNo").value;
			
			location.href = "BackServlet?op=LookMessageAndReplay&pageNo=" + pageNo;
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
    
    <table bordercolor="powderblue" width="100%" height="250px" cellpadding="0px" cellspacing="0px" border="1" align="center">
    	<tr style="background-color: skyblue;">
    		<th>信息标题</th>
    		<th>发表时间</th>
    		<th>回复人</th>
    		<th>回复时间</th>
    		<th>回复内容</th>
    		<th>操作</th>
    	</tr>
    	<%
    	
    		int rowPerPage = (Integer)request.getAttribute("reRowPerPage");
    		int rowCount = (Integer)request.getAttribute("reRowCount");
    		int pageCount = (Integer)request.getAttribute("rePageCount");
    		int pageNo = (Integer)request.getAttribute("rePageNo");
    		
    		List<Replay> list = (List<Replay>)request.getAttribute("reList");
    		for(Replay r : list) {
    	%>
    			<tr style="background-color: seashell;" onmousemove='this.style.backgroundColor="#FFCCCC"' onmouseout='this.style.backgroundColor="seashell"'>
		    		<td align="center"><%=r.getMessage().getMes_title() %></td>
		    		<td align="center"><%=r.getMessage().getMes_time() %></td>
		    		<td align="center"><%=r.getUser().getUser_name() %></td>
		    		<td align="center"><%=r.getRep_time() %></td>
		    		<td align="center"><%=r.getRep_content() %></td>
		    		<td align="center">
		    			<a style="color: green;" href="/Kasios/LookSingleMessageServlet?id=<%= r.getMessage().getMes_id() %>">查看</a>
		    		</td>
		    	</tr>
    	<%
    		}
    	%>
    	
    	<tr align="center">
    		<td colspan="7">
    			总记录数：<%=rowCount %>条
    			每页显示：<%=rowPerPage %>条
    			当前页数：<%=pageNo %> / <%=pageCount %> 页
    			<a href="BackServlet?op=LookMessageAndReplay&pageNo=1">首页</a>
    			<a href="BackServlet?op=LookMessageAndReplay&pageNo=<%=pageNo-1 %>">上一页</a>
    			<a href="BackServlet?op=LookMessageAndReplay&pageNo=<%=pageNo+1 %>">下一页</a>
    			<a href="BackServlet?op=LookMessageAndReplay&pageNo=<%=pageCount %>">末页</a>
    			
    			输入页数：<input type="text" id="txtPageNo" value="<%=pageNo %>" size="2" onkeydown="checkIsEnter()" />
    			<input type="button" value="跳转" onclick="gotoPageNo()" />
    		</td>
    	</tr>
    	
    </table>
    
  </body>
</html>
