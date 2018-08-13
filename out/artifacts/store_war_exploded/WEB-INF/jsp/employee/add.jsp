<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
	String path = request.getContextPath() + "/";
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>title</title>
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
    <link href="assets/css/colorpicker.css" rel="stylesheet">
    <link href="assets/css/datepicker.css" rel="stylesheet">
    <link href="assets/css/timepicker.css" rel="stylesheet">
    <link href="assets/css/select2.css" rel="stylesheet">
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
              <a class="accordion-toggle active b_C3F7A7" data-toggle="collapse" data-parent="#accordion2" href="#collapse1"><i class="icon-user"></i> <span>人员管理</span></a>
            </div>
            <div id="collapse1" class="accordion-body in collapse">
              <div class="accordion-inner">
                <a class="accordion-toggle" href="customer/list"><i class="icon-heart"></i> 用户管理</a>
                <a class="accordion-toggle active" href="employee/list"><i class="icon-briefcase"></i> 员工管理</a>
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
      <div class="main_container" id="forms_page">
        <div class="row-fluid">
          <ul class="breadcrumb">
            <li><a href="index/backShow">首页</a> <span class="divider">/</span></li>
            <li><a href="employee/list">员工管理</a> <span class="divider">/</span></li>
            <li class="active">添加员工</li>
          </ul>
          <h2 class="heading">
             	   添加员工
                <span class="btn-group pull-right">
                  <button class="btn" onclick="window.location.href='employee/list'"><i class="icon-signout"></i> 返回</button>
                </span>
          </h2>
        </div>
        <div class="row-fluid">
          <div class="widget widget-padding span12">
            <div class="widget-header">
              <i class="icon-list-alt"></i><h5>员工信息</h5>
            </div>
            <div class="widget-body">
              <div class="widget-forms clearfix">
              
                <form action="employee/add" method="post" enctype="multipart/form-data" id="myform" class="form-horizontal" onsubmit="return isfull()&&validate();">
                  <div class="control-group">
                    <label class="control-label">账号</label>
                    <div class="controls">
                      <input class="span7" type="text" placeholder="根据姓名自动生成" name="account" id="account" readonly="readonly">
                      <span class="help-inline"><img id="loading"><font id="show"></font></span>
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label">姓名</label>
                    <div class="controls">
                      <input class="span7" type="text" placeholder="请填写真实姓名" name="name" id="name"  maxlength="4" onchange="getaccount();" onkeyup="value=value.replace(/[^\u4E00-\u9FA5]/g,'')">
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label">密码</label>
                    <div class="controls">
                      <input class="span7 tip" type="password" placeholder="十位以内数字、字母组合" name="password" id="psw1" maxlength="10">
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label">确认密码</label>
                    <div class="controls">
                      <input class="span7 tip" data-title="请保持一致" type="password" placeholder="十位以内数字、字母组合" id="psw2" maxlength="10">
                    </div>
                  </div>
                  
                  
                   <div class="control-group">
                   <label class="control-label">证件</label>
                    <div class="controls">
                     <select class="span2">
                      <option selected="selected">身份证</option>
                     </select>
                    &nbsp;&nbsp;&nbsp;
                    <input type="text" class="span5" placeholder="证件号码" name='idcard' id="idcard">
                    </div>
                  </div>
                                    
                  <div class="control-group">
                   <label class="control-label">权限</label>
                    <div class="controls">
                        <input type="checkbox" value="1" name="ren">&nbsp;&nbsp;人员管理
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" value="1" name="lei">&nbsp;&nbsp;类别管理
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" value="1" name="huo">&nbsp;&nbsp;货物管理
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" value="1" name="xin">&nbsp;&nbsp;信息统计
                    </div>
                  </div>

                  
                   <div class="control-group">
                   <label class="control-label">头像</label>
                    <div class="controls">
                     <input name="photoFile" type="file" class="simple_form"  onchange="preview(this,'preview','imghead',350,200)" id="photo"/>
                     <div id="preview">
								<img id="imghead" width="350" height="200" />
					 </div>
                    </div>
                  </div>
                  
            <div class="widget-footer">
               <button class="btn btn-primary" type="submit">保存</button>
               <button class="btn" id="reset" onclick="clren();" type="button">重置</button>
              </div>
         	 </form>
              </div>
            </div>

        <div class="row-fluid">
          
        </div>
        </div>
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

    <script type="text/javascript" src="assets/js/select2.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap-colorpicker.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap-timepicker.js"></script>
  </div>
    <script type="text/javascript"src="plugins/imagePreview/imagePreview.js"></script>
    
    <script type="text/javascript">
    //重置表单
    function clren() {
    	$(':input','#myform') 
    	.not(':button, :submit, :reset, :hidden') 
    	.val('') 
    	.removeAttr('checked') 
    	.removeAttr('selected');
    	$('#imghead') 
    	.removeAttr('src');
    	$('#show') 
    	.html('');
    	
	}
    
	//前台验证
	function isfull() {
		//是否填写姓名
		var txt=document.getElementById("name");//通过ID属性控制对象
		var message=txt.value;
		if(message==""){
			alertify.alert( '请填写姓名', function () {
		           // after clicking OK
		           txt.focus();//获得焦点，友好性
		       });
			return false;
		}
		
		//是否填写密码
		var txt=document.getElementById("psw1");//通过ID属性控制对象
		var message=txt.value;
			
		if(message==""){
			alertify.alert( '请输入密码', function () {
		           // after clicking OK
		           txt.focus();//获得焦点，友好性
		       });
			return false;
		}
		
		//两次是否一致
		var txt2 = document.getElementById("psw2");
		if (txt.value != txt2.value) {
			alertify.alert( '两次密码不一致', function () {
	            // after clicking OK
	            txt.focus();//获得焦点，友好性
	        });
			return false;
		}
		
		//是否填写证件信息
		var txt=document.getElementById("idcard");//通过ID属性控制对象
		var message=txt.value;
			
		if(message==""){
			alertify.alert( '请输入证件信息', function () {
		           // after clicking OK
		           txt.focus();//获得焦点，友好性
		       });
			return false;
		}
		
		//是否选择头像
		var txt=document.getElementById("photo");//通过ID属性控制对象
		var message=txt.value;
		if(message==""){
			alertify.alert( '请选择头像', function () {
		           // after clicking OK
		           txt.focus();//获得焦点，友好性
		       });
			return false;
		}
		
		return true;
	}
	
	//是否选择
	function validate(){
		var r= document.getElementsByName("ren");
		var l= document.getElementsByName("lei");
		var h= document.getElementsByName("huo");
		var x= document.getElementsByName("xin");
		if(r[0].checked||l[0].checked||h[0].checked||x[0].checked){
			return true;
		}
		alertify.alert( '请至少选择一条权限', function () {
	           // after clicking OK
	           txt.focus();//获得焦点，友好性
	       });
			return false;
	}
	
	//ajax获得账号
	function getaccount() {
		$("#loading").attr("src","assets/img/spinner.gif");
		$("#show").removeAttr("color").html("正在为您生成账号");
		var url = "employee/getAccount";
		var param={
				"name":$("#name").val()
		};
		$.post(url,param,function(m){
			$("#account").attr("value",m.account);
			$("#loading").removeAttr("src");
			if(m.m=="1"){
				$("#show").attr("color","green").html("恭喜您，该账号可以使用");
			}else if(m.m=="0"){
				$("#show").attr("color","red").html("原账号不可用，但已为您添加随机数");
			}
		});
	}
    </script>
  </body>
</html>