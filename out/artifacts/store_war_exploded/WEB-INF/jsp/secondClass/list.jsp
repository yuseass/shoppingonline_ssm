<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%
	String path = request.getContextPath() + "/";
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Realm - Tables</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Bluth Company">
    <link rel="shortcut icon" href="assets/ico/favicon.html">
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/theme.css" rel="stylesheet">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/alertify.css" rel="stylesheet">
    <link rel="Favicon Icon" href="favicon.ico">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
  </head>
  <body>
  <div id="wrap">
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <div class="logo">
            <img src="assets/img/logo.png" alt="Realm Admin Template">
          </div>
           <a class="btn btn-navbar visible-phone" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
           <a class="btn btn-navbar slide_menu_left visible-tablet">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>

          <div class="top-menu visible-desktop">
            <ul class="pull-right">  
              <li><a href="employee/logout"><i class="icon-off"></i>注销</a></li>
            </ul>
          </div>

          <div class="top-menu visible-phone visible-tablet">
            <ul class="pull-right">  
              <li><a title="link to View all Messages page, no popover in phone view or tablet" href="index/backShow"><i class="icon-envelope"></i></a></li>
              <li><a title="link to View all Notifications page, no popover in phone view or tablet" href="index/backShow"><i class="icon-globe"></i></a></li>
              <li><a href="employee/logout"><i class="icon-off"></i></a></li>
            </ul>
          </div>

        </div>
      </div>
    </div>

    <div class="container-fluid">
     
      <!-- Side menu -->
      <div class="sidebar-nav nav-collapse collapse">
        <div class="user_side clearfix">
          <img src="upload/${employee.photo}">
          <h5>${employee.name}</h5>
          <a href="employee/updatePwdShow?e_id=${employee.e_id}"><i class="icon-cog"></i> 修改密码</a>        
        </div>
        <div class="accordion" id="accordion2">
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_F79999" href="index/backShow"><i class="icon-home"></i> <span>首页</span></a>
            </div>
          </div>
          <c:if test="${employee.ren==1 }">
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_C3F7A7 collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapse1"><i class="icon-user"></i> <span>人员管理</span></a>
            </div>
            <div id="collapse1" class="accordion-body collapse">
              <div class="accordion-inner">
                <a class="accordion-toggle" href="customer/list"><i class="icon-heart"></i> 用户管理</a>
                <a class="accordion-toggle" href="employee/list"><i class="icon-briefcase"></i> 员工管理</a>
              </div>
            </div>
          </div>
          </c:if>
          <c:if test="${employee.lei==1 }">
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle active b_9FDDF6" data-toggle="collapse" data-parent="#accordion2" href="#collapse2"><i class="icon-reorder"></i> <span>类别管理</span></a>
            </div>
            <div id="collapse2" class="accordion-body in collapse">
              <div class="accordion-inner">
                <a class="accordion-toggle" href="firstClass/list"><i class="icon-tag"></i> 一级类别</a>
                <a class="accordion-toggle active" href="secondClass/list"><i class="icon-tags"></i> 二级类别</a>
              </div>
            </div>
          </div>
          </c:if>
          <c:if test="${employee.huo==1 }">
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_F6F1A2 collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapse3"><i class="icon-shopping-cart"></i> <span>货物管理</span></a>
            </div>
            <div id="collapse3" class="accordion-body collapse">
              <div class="accordion-inner">
                <a class="accordion-toggle" href="goods/b_list"><i class="icon-glass"></i> 商品管理</a>
                <a class="accordion-toggle" href="goods/hiddenList"><i class="icon-lock"></i> 仓库管理</a>
              </div>
            </div>
          </div>
          </c:if>
          <c:if test="${employee.xin==1 }">
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_C1F8A9 collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapse4"><i class="icon-bar-chart"></i> <span>信息统计</span></a>
            </div>
            <div id="collapse4" class="accordion-body collapse">
              <div class="accordion-inner">
                <a class="accordion-toggle" href="indent/b_list"><i class="icon-list-alt"></i> 订单统计</a>
              </div>
            </div>
          </div>
          </c:if>
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_F5C294" href="employee/updatePhotoShow?e_id=${employee.e_id}"><i class="icon-edit"></i> <span>个人信息</span></a>
            </div>
          </div>  
          
          
        </div>
      </div>
      <!-- /Side menu -->

      <!-- Main window -->
      <div class="main_container" id="tables_page">
        <div class="row-fluid">
          <ul class="breadcrumb">
            <li><a href="index/backShow">首页</a> <span class="divider">/</span></li>
            <li><a href="secondClass/list">二级类别管理</a> <span class="divider">/</span></li>
            <li class="active">查看二级类别</li>
          </ul>
          <h2 class="heading">
             	   查看二级类别
                <div class="btn-group pull-right">
                  <button class="btn" onclick="window.location.href='secondClass/addShow'"><i class="icon-signin"></i> 添加</button>
                </div>
          </h2>
        </div>
 
 		<div class="row-fluid">
          <div class="widget widget-padding span12">
            <div class="widget-header">
              <i class="icon-group"></i>
              <h5>二级类别列表</h5>
              <div class="widget-buttons">
                  <a  data-title="开关" data-collapsed="false" class="tip collapse"><i class="icon-chevron-up"></i></a>
              </div>
            </div>  
            <div class="widget-body">
              <table id="users" class="table table-striped table-bordered dataTable">
                <thead>
                  <tr>
                    <th>名称</th>
                    <th>父级分类</th>
                    <th>操作</th>
                  </tr>
                </thead>
                <tbody align="center">
                  
                 <c:forEach items="${list}" var="s">
                  <tr>
                    <td><b>${s.name}</b></td>
                    <td><b>${s.f_name}</b></td>
                    <td>
                      <div class="btn-group">
                        <a class="btn btn-small dropdown-toggle" data-toggle="dropdown" >
                  			      操作
                          <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu pull-right">
                          <li><a href="secondClass/updateShow?s_id=${s.s_id}"><i class="icon-edit"></i> 修改</a></li>
                          <li><a onclick="ok('secondClass/delete?s_id=${s.s_id}','${s.name}',this);"><i class="icon-trash"></i> 删除</a></li>
                        </ul>
                      </div>
                    </td>
                  </tr>
                 </c:forEach>
                 
                </tbody>
              </table>
            </div> <!-- /widget-body -->
          </div> <!-- /widget -->
        </div> <!-- /row-fluid -->

      </div>
      <!-- /Main window -->
      
    </div><!--/.fluid-container-->
    </div><!-- wrap ends-->
	
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="assets/js/raphael-min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <script type="text/javascript" src='assets/js/sparkline.js'></script>
    <script type="text/javascript" src='assets/js/morris.min.js'></script>
    <script type="text/javascript" src="assets/js/jquery.dataTables.min.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.masonry.min.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.imagesloaded.min.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.facybox.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.alertify.min.js"></script> 
    <script type="text/javascript" src="assets/js/jquery.knob.js"></script>
    <script type='text/javascript' src='assets/js/fullcalendar.min.js'></script>
    <script type='text/javascript' src='assets/js/jquery.gritter.min.js'></script>
    <script type="text/javascript" src="assets/js/realm.js"></script>
    <script type="text/javascript">
    	function ok(url,name) {
    		 alertify.confirm( '確認刪除分类\"'+name+'\"？', function (e) {
    	            if (e) {
						window.location.href=url;
    	            } else {
    	            }
    	        });
		}
    </script>
  </body>
</html>