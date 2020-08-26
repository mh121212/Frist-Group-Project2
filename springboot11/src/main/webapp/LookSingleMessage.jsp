<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="entity.Message"%>
<%@page import="entity.Replay"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'LookSingleMessage.jsp' starting page</title>
    
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
	a
	{
		text-decoration: none;
		color: green;
	}
	</style>
	<script type="text/javascript">
		function gotoPageNo() {
			var pageNo = document.getElementById("txtPageNo").value;
			
			location.href = "LookSingleMessageServlet?pageNo=" + pageNo;
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
	  <table width="100%">
	  	<tr align="right">
	  		<td>
	  			<a href="/Kasios/BackServlet?op=LookMessageAndReplay">【返回列表】</a>
	  		</td>
	  	</tr>
	  </table>
    <%
    Message message=(Message)request.getAttribute("MessageInfo");
    int rowPerPage = (Integer)request.getAttribute("reRowPerPage");
    int rowCount = (Integer)request.getAttribute("reRowCount");
    int pageCount = (Integer)request.getAttribute("rePageCount");
    int pageNo = (Integer)request.getAttribute("rePageNo");   
    int id=(Integer)request.getAttribute("id"); 		
    List<Replay> list = (List<Replay>)request.getAttribute("reList");
    int i=1;
    %>
    <table bordercolor="#D5E8F6" style="position: absolute;top:50px;" border="1" cellpadding="0px" cellspacing="0px" width="100%">
    	<tr>
    		<td colspan="2" align="right" style="background-color: #EEEEEE;">
    			标题：<%= message.getMes_title() %>
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			发布时间：<%= message.getMes_time() %>
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			楼主
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			<a href="#">【删除】</a>
    		</td>
    	</tr>
    	<tr>
    		<td style="background-color: #EEEEEE;" align="center" width="15%"><img height="70px" src="<%= message.getUser().getUser_photo() %>"/><br/>姓名：<%= message.getUser().getUser_name() %><br/>积分：<%=message.getUser().getUser_point() %></td>
    		<td style="vertical-align: text-top;"><%= message.getMes_content() %></td>
    	</tr>
    </table>
    <table bordercolor="#D5E8F6" style="position: absolute;top:175px;" cellpadding="0px" cellspacing="0px" border="1" width="100%">
    	<%
    	for(Replay re:list)
    	{
    	%>
    		<tr>
    			<td align="right" colspan="2" style="background-color: #EEEEEE;">
	    			发布时间：<%= re.getRep_time() %>
	    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    			<%= i++ %>楼
	    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    			<a href="/Kasios/DeleteReplayServlet?id=<%= re.getRep_id() %>&mesId=<%= re.getMessage().getMes_id() %>">【删除】</a>
    			</td>
    		</tr>
    		<tr>
    			<td style="background-color: #EEEEEE;" align="center" width="15%"><img height="70px" src="<%= re.getUser().getUser_photo() %>"/><br/>姓名：<%= re.getUser().getUser_name() %><br/>积分：<%=re.getUser().getUser_point() %></td>
    			<td style="vertical-align: text-top;"><%= re.getRep_content() %></td>
    		</tr>
    	<%
    	}
    	%>
    
    <tr>
   		<td style="background-color: #EEEEEE;" colspan="2" align="center">
   			总记录数：<%=rowCount %>条
   			每页显示：<%=rowPerPage %>条
   			当前页数：<%=pageNo %> / <%=pageCount %> 页
   			<a href="LookSingleMessageServlet?pageNo=1&id=<%= id %>">首页</a>
   			<a href="LookSingleMessageServlet?pageNo=<%=pageNo-1 %>&id=<%= id %>">上一页</a>
   			<a href="LookSingleMessageServlet?pageNo=<%=pageNo+1 %>&id=<%= id %>">下一页</a>
   			<a href="LookSingleMessageServlet?pageNo=<%=pageCount %>&id=<%= id %>">末页</a>
   			
   			输入页数：<input style="border: solid 1px #D5E8F6;" type="text" id="txtPageNo" value="<%=pageNo %>" size="2" onkeydown="checkIsEnter()" />
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
