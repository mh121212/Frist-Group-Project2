<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
	<title>领航教育后台管理系统</title>
	<link rel="stylesheet" type="text/css" href="css/Back.css">
	<link rel="stylesheet" href="dtree/css/dtree.css" type="text/css">
</head>
<script type="text/javascript" src="dtree/js/dtree.js"></script>
  <body>
    <table border="1" bordercolor="powderblue" width="100%" height="100%" cellpadding="0px" cellspacing="0px">
    	<tr align="center" style="height: 12%"><th colspan="2"><font style="font-size: 25px;">领航教育后台管理系统</font></th></tr>
    	<tr>
	    	<td>
	    		<div style="margin-left:10px;">
					<script type="text/javascript">
                        var t = new dTree('t');	//创建树对象

                        t.add(1, -1, '后台管理');
                        t.add(2, 1, '个人信息管理');
                        t.add(3, 2, '个人信息', '../Admin.php?op=getbyid&id=<?php echo $_SESSION["Admin"][a_id];?>', '', 'frame1');
                        t.add(4, 2, '修改密码', 'editadminpwd.php', '', 'frame1');

                        t.add(5, 1, '首页管理');
                        t.add(6, 5, '区域图片', '../IndexAdmin.php?op=getquyu', '', 'frame1');
                        t.add(7, 5, '二维码图片', '../IndexAdmin.php?op=gettwo', '', 'frame1');
                        t.add(8, 5, '轮播图片', '../IndexAdmin.php?op=getflash', '', 'frame1');
                        t.add(9, 5, '新浪微博微信账号区域', '../IndexAdmin.php?op=getwei', '', 'frame1');
                        t.add(10, 5, '底部导航', '../IndexAdmin.php?op=getbnav', '', 'frame1');
                        t.add(11, 5, '底部轮播', '../IndexAdmin.php?op=getflash1', '', 'frame1');

                        t.add(12, 1, '左导航管理');
                        t.add(13, 12, '内容', '../IndexAdmin.php?op=getleft', '', 'frame1');
                        t.add(14, 12, '联系我们', '../IndexAdmin.php?op=touch', '', 'frame1');

                        t.add(15, 1, '新闻管理');
                        t.add(16, 15, '发布新闻', 'addnews.php', '', 'frame1');
                        t.add(17, 15, '新闻列表', '../News.php', '', 'frame1');

                        t.add(18, 1, '导航管理');
                        t.add(19, 18, '增加专业', '../Spe.php?op=toaddspe', '', 'frame1');
                        t.add(20, 18, '专业列表', '../Spe.php', '', 'frame1');

                        t.add(21, 1, '开课管理');
                        t.add(22, 21, '新增开课', '../Class.php?op=toaddclass', '', 'frame1');
                        t.add(23, 21, '开课管理', '../Class.php', '', 'frame1');

                        t.add(24, 1, '资料管理');
                        t.add(25, 24, '上传新资料', '../Data.php?op=toadddata', '', 'frame1');
                        t.add(26, 24, '资料管理', '../Data.php', '', 'frame1');

                        t.add(27, 1, '学员信息管理');
                        t.add(28, 27, '学员信息', '../User.php', '', 'frame1');

                        t.add(29, 1, '学员信息提交管理');
                        t.add(30, 29, '信息列表', '../User.php?op=usermsg', '', 'frame1');

                        document.write(t);

					</script>
	    		</div>
	    	</td>
	    	<td>
	    		<iframe name="frame1" frameborder="0" src="Welcome.jsp" width="100%" height="100%" scrolling="no">
	    		</iframe>
			</td>
    	</tr>
    	<tr align="right" style="height: 10%"><td colspan="2">版权所有：因特驰第一项目小组</td></tr>
    </table>
  </body>
</html>
