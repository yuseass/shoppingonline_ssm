<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	pageContext.setAttribute("path", path);
	pageContext.setAttribute("basePath", basePath);
%>
<!DOCTYPE HTML>
<html>
	<head>

		<base href="${basePath}">
		<meta charset="UTF-8">
		<title>Fullscreen Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="${basePath}assets/css/reset.css">
        <link rel="stylesheet" href="${basePath}assets/css/supersized.css">
        <link rel="stylesheet" href="${basePath}assets/css/style.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>

    <body>

        <div class="page-container">
            <h1>登录</h1><br/>
            <font color="red">${m }</font>
            <form action="employee/login" method="post">
                <input type="text" name="account" class="account" value="${account}" placeholder="账号">
                <input type="password" name="password" class="password" placeholder="密码">
                <button type="submit">登录</button>
            </form>
            <div class="connect">
            </div>
        </div>

        <!-- Javascript -->
        <script src="${basePath}assets/js/jquery-1.8.2.min.js"></script>
        <script src="${basePath}assets/js/supersized.3.2.7.min.js"></script>
        <script src="${basePath}assets/js/supersized-init.js"></script>
        <script src="${basePath}assets/js/scripts.js"></script>

    </body>

</html>