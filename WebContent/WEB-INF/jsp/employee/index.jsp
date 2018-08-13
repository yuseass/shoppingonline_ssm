<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
	String path = request.getContextPath() + "/";
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"/>
<title>商城首页</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
  <body onload="redraw_dashboard_analytics();">
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
            <ul class="pull-left">
            </ul>
            <ul class="pull-right">  
              <li><a href="employee/logout"><i class="icon-off"></i>注销</a></li>
            </ul>
          </div>

          <div class="top-menu visible-phone visible-tablet">
            <ul class="pull-right">  
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
              <a class="accordion-toggle active b_F79999" href="index/backShow"><i class="icon-home"></i> <span>首页</span></a>
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
              <a class="accordion-toggle b_9FDDF6 collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapse2"><i class="icon-reorder"></i> <span>类别管理</span></a>
            </div>
            <div id="collapse2" class="accordion-body collapse">
              <div class="accordion-inner">
                <a class="accordion-toggle" href="firstClass/list"><i class="icon-tag"></i> 一级类别</a>
                <a class="accordion-toggle" href="secondClass/list"><i class="icon-tags"></i> 二级类别</a>
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
      <div class="main_container" id="dashboard_page">
        <div class="row-fluid">
          <div class="overview_boxes">
            <div class="box_row clearfix">
              <div>
                <div class="circle">
                  <i style="color:#E28271" class="icon-eye-open"></i>
                </div>
                <h2>7.3k</h2>
                <p>点击量</p>
              </div>
              <div>
                <div class="circle">
                  <i style="color:#98E5EA" class="icon-user"></i>
                </div>
                <h2>4.2k</h2>
                <p>用户数</p>
              </div> 
              <div>
                <div class="circle">
                  <i style="color:#AEEA98" class="icon-bullhorn"></i>
                </div>
                <h2>235</h2>
                <p>总单数</p>
              </div> 
            </div> 
            <div class="box_row clearfix"><div>
                <div class="circle">
                  <i style="color:#98AEEA" class="icon-thumbs-up"></i>
                </div>
                <h2>152</h2>
                <p>商品数</p>
              </div> 
              <div>
                <div class="circle">
                  <i style="color:#EA98AB" class="icon-credit-card"></i>
                </div>
                <h2>$14,230</h2>
                <p>总销量</p>
              </div>
              <div>
                <div class="circle">
                  <i style="color:#F6BF99" class="icon-phone"></i>
                </div>
                <h2>92</h2>
                <p>员工数</p>
              </div> 
            </div> 
          </div>
        </div>  

		  <div class="row-fluid">
            <div class="widget span12" style="overflow:visible;">
                  <a class="btn btn-box bubble bubble-danger span2 tips" data-title="bubble-danger" href="index/backShow" data-bubble="5k"><i class="icon-user"></i><span>Users</span></a>
                  <a class="btn btn-box span2" href="index/backShow"><i class="icon-plus-sign"></i><span>Notifications</span></a>
                  <a class="btn btn-box span2" href="index/backShow"><i class="icon-calendar"></i><span>Calendar</span></a>
                  <a class="btn btn-box bubble bubble-info span2 tips" data-title="bubble-info" href="index/backShow" data-bubble="2"><i class="icon-signal"></i><span>Analytics</span></a>
                  <a class="btn btn-box span2" href="index/backShow" data-bubble="2"><i class="icon-lightbulb"></i><span>Tickets</span></a>
                  <a class="btn btn-box bubble bubble-success span2 tips" data-title="bubble-success" href="index/backShow" data-bubble="102"><i class="icon-sitemap"></i><span>Categories</span></a>

            </div><!-- /widget -->
          </div><!-- /row-fluid -->

 		<div class="row-fluid">
           
         <div class="row-fluid">
          <div class="widget span4">
            <div class="widget-header">
              <i class="icon-lightbulb"></i>
              <h5>Recent Support Tickets</h5>
              <div class="widget-buttons">
                  <a href="javascript:void(0)" class="collapse" data-collapsed="false"><i data-title="Collapse" class="icon-chevron-up"></i></a>
              </div>
            </div>  
            <div class="widget-body" style="height:270px;overflow:hidden">
              <div class="widget-tickets clearfix slimscroll">
                <ul>
                  <li class="priority-high">
                     <a href="javascript:void(0)" data-toggle="modal" data-target="#task_modal1">
                      <img src="assets/img/avatars/02.jpg" class="avatar"/>
                      <h5>Javascript error</h5>
                      <p>There's a javascript error on your frontpage if...</p>
                      <div class="date">Thursday</div>
                    </a>
                  </li>
                  <li class="priority-medium">
                    <a href="javascript:void(0)" data-toggle="modal" data-target="#task_modal">
                      <img src="assets/img/avatars/03.jpg" class="avatar"/>
                      <h5>Login</h5>
                      <p>I can't login, theres an error when I go to the...</p>
                      <div class="date">Thursday</div>
                    </a>
                  </li>
                  <li class="priority-medium">
                    <a href="javascript:void(0);" data-toggle="modal" data-target="#example_modal">
                      <img src="assets/img/avatars/04.jpg" class="avatar"/>
                      <h5>Problem</h5>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing...</p>
                      <div class="date">Monday</div>
                    </a>
                  </li>
                  <li class="priority-medium">
                    <a href="javascript:void(0);" data-toggle="modal" data-target="#example_modal">
                      <img src="assets/img/avatars/01.jpg" class="avatar"/>
                      <h5>Problem</h5>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing...</p>
                      <div class="date">Monday</div>
                    </a>
                  </li>
                  <li class="priority-medium">
                    <a href="javascript:void(0);" data-toggle="modal" data-target="#example_modal">
                      <img src="assets/img/avatars/13.jpg" class="avatar"/>
                      <h5>A Problem</h5>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing...</p>
                      <div class="date">Monday</div>
                    </a>
                  </li>
                  <li class="priority-low">
                    <a href="javascript:void(0);" data-toggle="modal" data-target="#example_modal">
                      <img src="assets/img/avatars/12.jpg" class="avatar"/>
                      <h5>Big Problem</h5>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing...</p>
                      <div class="date">Yesterday</div>
                    </a>
                  </li>
                  <li class="priority-low">
                    <a href="javascript:void(0);" data-toggle="modal" data-target="#example_modal">
                      <img src="assets/img/avatars/08.jpg" class="avatar"/>
                      <h5>Big Problem</h5>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing...</p>
                      <div class="date">Yesterday</div>
                    </a>
                  </li>
                  <li class="priority-low">
                    <a href="javascript:void(0);" data-toggle="modal" data-target="#example_modal">
                      <img src="assets/img/avatars/10.jpg" class="avatar"/>
                      <h5>Big Problem</h5>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing...</p>
                      <div class="date">Yesterday</div>
                    </a>
                  </li>
                  <li class="priority-low">
                    <a href="javascript:void(0);" data-toggle="modal" data-target="#example_modal">
                      <img src="assets/img/avatars/11.jpg" class="avatar"/>
                      <h5>Big Problem</h5>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing...</p>
                      <div class="date">Yesterday</div>
                    </a>
                  </li>
                </ul>
              </div>
            </div><!--/widget-body-->
            <div class="widget-footer">
            </div>
          </div> <!-- /widget span5 -->   
            
          <div class="widget span8">
            <div class="widget-header" >
              <i class="icon-credit-card"></i>
              <h5>Last 3 month's income</h5>
              <div class="widget-buttons" >
                  <button class="btn btn-info btn-small" type="button"><i class="icon-plus"></i> See more</button>
                  <a href="javascript:void(0)" class="collapse" data-collapsed="false"><i data-title="Collapse" class="icon-chevron-up"></i></a>
              </div>
            </div>
            <div class="widget-body clearfix" >
              <div style="height:274px;" id="graph" class="widget-analytics-large"></div>
            </div>
          </div>
        </div> <!-- /row-fluid -->

     
        <br/>
        <br/>

          <div class="row-fluid">
            <div class="widget span6">
              <div class="widget-header"><i class="icon-signal"></i><h5>Bar Chart</h5>
              <div class="widget-buttons">
                  <a href="javascript:void(0)" class="collapse" data-collapsed="false"><i data-title="Collapse" class="icon-chevron-up"></i></a>
              </div>
              </div>
              <div class="widget-body clearfix">
                <div class="analytics_item" id="barchart"></div>
              </div>
            </div>
            
            
			 <div class="widget span3">
               <div class="widget-header"><i class="icon-signal"></i><h5>Browsers</h5>
                <div class="widget-buttons">
                    <a href="javascript:void(0)" class="collapse" data-collapsed="false"><i data-title="Collapse" class="icon-chevron-up"></i></a>
                </div>
                </div>
                <div class="widget-header-under">The most visited pages by your users</div>
                <div class="widget-body clearfix" style="min-height: 319px;">
                  <table class="table table-striped">
                    <thead>
                        <tr>
                          <th>Browser</th>
                          <th>Visits</th>
                        </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Firefox</td>
                        <td><strong>5798</strong></td>
                      </tr>
                      <tr>
                        <td>Chrome</td>
                        <td><strong>4855</strong></td>
                      </tr>
                      <tr>
                        <td>Internet Explorer</td>
                        <td><strong>2877</strong></td>
                      </tr>
                      <tr>
                        <td>Safari</td>
                        <td><strong>2705</strong></td>
                      </tr>
                      <tr>
                        <td>Opera</td>
                        <td><strong>1985</strong></td>
                      </tr>
                      <tr>
                        <td>Android Browser</td>
                        <td><strong>1581</strong></td>
                      </tr>
                      <tr>
                        <td>RockMelt</td>
                        <td><strong>1284</strong></td>
                      </tr>
                    </tbody>      
                  </table>
                </div>
            </div>
            
            
            <div class="widget span3">
              <div class="widget-header"><i class="icon-signal"></i><h5>Most active pages</h5>
                <div class="widget-buttons">
                  <a href="javascript:void(0)" class="collapse" data-collapsed="false"><i data-title="Collapse" class="icon-chevron-up"></i></a>
                </div>
              </div>
                <div class="widget-header-under">The most visited pages by your users</div>
                <div class="widget-body clearfix" style="min-height: 319px;">
                  <table class="table table-striped">
                    <thead>
                        <tr>
                          <th>Page</th>
                          <th>Visits</th>
                        </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Categories</td>
                        <td><strong>8790</strong></td>
                      </tr>
                      <tr>
                        <td>Clothing</td>
                        <td><strong>7052</strong></td>
                      </tr>
                      <tr>
                        <td>About</td>
                        <td><strong>6577</strong></td>
                      </tr>
                      <tr>
                        <td>Contact Us</td>
                        <td><strong>5760</strong></td>
                      </tr>
                      <tr>
                        <td>Blog</td>
                        <td><strong>4876</strong></td>
                      </tr>
                      <tr>
                        <td>Prices</td>
                        <td><strong>3866</strong></td>
                      </tr>
                      <tr>
                        <td>Information</td>
                        <td><strong>1876</strong></td>
                      </tr>
                    </tbody>      
                  </table>
                </div>
            </div>
          </div>
      </div>
      <!-- /Main window -->
      
    </div><!--/.fluid-container-->
    </div><!-- wrap ends-->

	<!-- task_modal modal -->
    <div id="task_modal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">Task info example</h3>
      </div>
      <div class="modal-body">
        <div class="clearfix">
          <img src="assets/img/avatars/11.jpg" class="img-circle" style="float: left; width: 65px; margin-right: 20px;">
           <h3 style="margin:0">John</h3>
           <p class="muted">Marketing</p>
        </div>
        <hr>
        <h5>Task</h5>
        <p>Create a marketing plan for the new campaign</p>
        <h5>status&nbsp;&nbsp;<small>60%</small></h5>
        <div class="progress">
          <div class="bar" style="width: 60%;"></div>
        </div>
      </div>
      <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
      </div>
    </div> 

	<!-- task_modal modal -->
    <div id="task_modal1" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">Task info example</h3>
      </div>
      <div class="modal-body">
        <div class="clearfix">
          <img src="assets/img/avatars/11.jpg" class="img-circle" style="float: left; width: 65px; margin-right: 20px;">
           <h3 style="margin:0">lalala</h3>
           <p class="muted">Marketing</p>
        </div>
        <hr>
        <h5>Task</h5>
        <p>Create a marketing plan for the new campaign</p>
        <h5>status&nbsp;&nbsp;<small>60%</small></h5>
        <div class="progress">
          <div class="bar" style="width: 60%;"></div>
        </div>
      </div>
      <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
      </div>
    </div> 
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
    <script type="text/javascript" src="assets/js/jquery.slimscroll.min.js"></script>
    <script type="text/javascript">
  //-----  Dashboard page -----//

    function redraw_dashboard_analytics(){
      $('#graph').html('');
      $('#barchart').html('');

      
      Morris.Area({
       element: 'graph',
      data: [
        {x: '2018-01-01', y: 1000},
        {x: '2018-01-10', y: 172},
        {x: '2018-01-20', y: 130},
        {x: '2018-02-01', y: 198},
        {x: '2018-02-10', y: 256},
        {x: '2018-02-20', y: 211},
        {x: '2018-03-01', y: 345},
        {x: '2018-03-10', y: 456},
        {x: '2018-03-20', y: 384},
        {x: '2018-04-01', y: 584}
      ],
      xkey: 'x',
      ykeys: ['y'],
      smooth: false,
      lineColors: ['#42C1F7','#B3E6FC'],
      labels: ['Y', 'Z']
      });

       // init Morris
        Morris.Bar({
        element: 'barchart',
        data: [
          {x: '2018-01-01', y: 102, z:666},
          {x: '2018-01-10', y: 172, z:150},
          {x: '2018-01-20', y: 130, z:110},
          {x: '2018-02-01', y: 198, z:180},
          {x: '2018-02-10', y: 256, z:220},
          {x: '2018-02-20', y: 211, z:200},
          {x: '2018-03-01', y: 345, z:320},
          {x: '2018-03-10', y: 456, z:400},
          {x: '2018-03-20', y: 384, z:300},
          {x: '2018-04-01', y: 584, z:500}
        ],
        xkey: 'x',
        ykeys: ['y', 'z'],
        barColors: ['#42C1F7','#B3E6FC'],
        labels: ['Y', 'Z']

        });  
    }
    $(function() {
    $('.tip').tooltip();
    $.gritter.add({
        // (string | mandatory) the heading of the notification
        // (string | mandatory) the text inside the notification
        // (string | optional) the image to display on the left
        // (bool | optional) if you want it to fade out on its own or just sit there
        // (int | optional) the time you want it to be alive for before fading out
        // (string | optional) the class name you want to apply to that specific message
        class_name: 'my-sticky-class'
      });
    $('.top-menu #messages').popover({
        html:true,
        placement: 'bottom',
        title: 'Messages',
        content:'<ul><li><a href="index/backShow"><img src="assets/img/avatars/04.jpg"><span>lalala</span><h4>Bill Fernando</h4>Hey John, have you finished the report yet?</a></li><li><a href="index/backShow"><img src="assets/img/avatars/05.jpg"><span>Yesterday</span><h4>Roger White</h4>Did you talk to Andrea? She was looking for you</a></li></ul><div class="popover_footer"><a href="">View all messages</a></div>'
      });
    });
    </script>
  </body>
</html>
