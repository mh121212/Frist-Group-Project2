<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>领航教育后台管理</title>
    <link type="text/css" rel="stylesheet" href="css/backadmin.css"/>
    <link rel="stylesheet" href="dtree/css/dtree.css" type="text/css">
</head>
<script type="text/javascript" src="dtree/js/dtree.js"></script>
<style type="text/css">

    .main .backcenter{ width:1090px; height:auto; overflow:hidden; margin:0px auto; margin-top:10px;}
    .main .backcenter .bcleft{ float: left; width:230px; height:630px; overflow: hidden; border:solid 1px #dddddd;}
    .main .backcenter .bcright{ float: left; width:840px; height:630px; overflow:hidden; margin-left:10px; border:solid 1px #dddddd; background:url(image/lbg.png) repeat-x;}


    .bottom{ width:100%; height:84px; overflow:hidden; background-color: gainsboro; margin-top:10px;}
    .bottom .bc{ width:1000px; height:84px; overflow:hidden; margin:0px auto;}
    .bottom .bc .bcright{ margin-left:50px; margin-top:20px; float:left;  overflow:hidden;}
    .bottom .bc .bcright .bcli{ float:left;}
    .bottom .bc .bcright .bcli ul li{ float:left; width:70px; text-align:center; overflow:hidden;}
    .bottom .bc .bcright .bcli ul li a{ color:#7f7f7f;}
    .bottom .bc .bcright .bcli ul li.line{ background:url(image/line.jpg) no-repeat; width:1px; height:12px;}
    .bottom .bc .bcright .bcli ul li a:hover{ text-decoration:underline;}
    .bottom .bc .bcright .bcbottom{ color:#7f7f7f; margin-left:11px; margin-top:30px;}
</style>
<body>
<div class="main">
    <div style="width:100%; height:60px; background-color: gainsboro;">
        <div style="width:990px; height:29px; margin:0px auto;">
            <div style="float:left; padding-top:20px;">
                <font style="font-size: 20px;">欢迎您，红红</font>
                <a href="#" style="color:red;"><font style="font-size: 20px;">[安全退出]</font></a>
            </div>
        </div>
    </div>

    <!-- 后台中间部分开始 -->
    <div class="backcenter">

        <div class="bcleft" style="padding-left: 2px;">
            <script type="text/javascript">
                var t = new dTree('t');	//创建树对象

                t.add(1, -1, '后台管理');
                t.add(2, 1, '个人信息管理');
                t.add(3, 2, '个人信息', '../Admin.php', '', 'frame1');
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

        <div class="bcright">
            <iframe src="Welcome.jsp" name="frame1" frameBorder="0" scrolling="no" width="100%" height="590px;"></iframe>
        </div>
    </div>
    <!-- 后台中间部分结束 -->

    <div class="bottom">
        <div class="bc">
            <div style="margin-left:15px; margin-top:10px; float:left;"><img src="image/bottomlogo.jpg" /></div>
            <div class="bcright">
                <div class="bcli">
                    <ul>
                        <li><a href="#">集团首页</a></li>
                        <li class="line"></li>
                        <li><a href="#">关于领航</a></li>
                        <li class="line"></li>
                        <li><a href="#">加入我们</a></li>
                        <li class="line"></li>
                        <li><a href="#">联系我们</a></li>
                        <li class="line"></li>
                        <li><a href="#">加盟合作</a></li>
                        <li class="line"></li>
                        <li><a href="#">法律申明</a></li>
                    </ul>
                </div>
                <div style="float:left; margin-left:20px; color:#7f7f7f;">全国免费咨询电话：15010904092</div>
                <div class="bcbottom">
                    版权所有：因特驰第一项目小组  张红 杨志斌  程文斌 孟浩 周勇 韩小杰
                </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>
