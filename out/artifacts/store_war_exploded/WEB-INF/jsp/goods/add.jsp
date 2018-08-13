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
    <style type="text/css">
		textarea {
    	resize: none;
    	height:100px;
		width:500px;
		}
	</style>
  </head>
  <body onload="clren();">
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
              <a class="accordion-toggle active b_F6F1A2" data-toggle="collapse" data-parent="#accordion2" href="#collapse3"><i class="icon-shopping-cart"></i> <span>货物管理</span></a>
            </div>
            <div id="collapse3" class="accordion-body in collapse">
              <div class="accordion-inner">
                <a class="accordion-toggle active" href="goods/b_list"><i class="icon-glass"></i> 商品管理</a>
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
            <li><a href="goods/b_list">商品管理</a> <span class="divider">/</span></li>
            <li class="active">添加商品</li>
          </ul>
          <h2 class="heading">
             	   添加商品
                <span class="btn-group pull-right">
                  <button class="btn" onclick="window.location.href='goods/b_list'"><i class="icon-signout"></i> 返回</button>
                </span>
          </h2>
        </div>
        <div class="row-fluid">
          <div class="widget widget-padding span12">
            <div class="widget-header">
              <i class="icon-list-alt"></i><h5>商品信息</h5>
            </div>
            <div class="widget-body">
              <div class="widget-forms clearfix">
              
                <form action="goods/add" method="post" enctype="multipart/form-data" id="myform" class="form-horizontal" onsubmit="return isfull();">
                  
                  <div class="control-group">
                    <label class="control-label">标题</label>
                    <div class="controls">
                      <input class="span7" type="text" placeholder="请填写标题" name="title" id="title"  maxlength="20" onkeyup="value=value.replace(/[^\u4E00-\u9FA5]/g,'')">
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label">品牌</label>
                    <div class="controls">
                      <input class="span7" type="text" placeholder="请填写品牌" name="brand" id="brand" maxlength="20">
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label">型号</label>
                    <div class="controls">
                      <input class="span7" type="text" placeholder="请填写型号" name="model" id="model"  maxlength="20">
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label">库存</label>
                    <div class="controls">
                      <input class="span7" type="text" placeholder="请填写库存" name="stock" id="stock"  maxlength="5" onkeyup="value=this.value.replace(/\D+/g,'')">
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label">价格</label>
                    <div class="controls">
                      <input class="span7" type="text" placeholder="请填写型号" name="price" id="price"  maxlength="5" onkeyup="value=this.value.replace(/\D+/g,'')">
                    </div>
                  </div>
                  
                  <div class="control-group">
                    <label class="control-label">一级分类</label>
                    <div class="controls">
                      <select class="span3" onchange="secondClasses();" id="firstClass">
                      	<option selected="selected" value="0">=请选择一级分类=</option>
                      	<c:forEach items="${list}" var="f">
                      	<option value="${f.f_id}">${f.name}</option>
                      	</c:forEach>
                      </select>
                      	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二级分类&nbsp;&nbsp;&nbsp;
                      <select class="span3" id="secondClass" name="s_id">
                      	<option selected="selected" value="0">=请先选择一级分类=</option>
                      </select>
                    </div>
                  </div>
                  
                   <div class="control-group">
                   <label class="control-label">主图</label>
                    <div class="controls">
                     <input name="photoFile1" type="file" class="simple_form"  onchange="preview(this,'preview','imghead',350,200)" id="photo1"/>
                     <div id="preview">
								<img id="imghead" width="350" height="200" />
					 </div>
                    </div>
                  </div>
                   <div class="control-group">
                   <label class="control-label">图二</label>
                    <div class="controls">
                     <input name="photoFile2" type="file" class="simple_form"  onchange="preview(this,'preview2','imghead2',350,200)" id="photo2"/>
                     <div id="preview2">
								<img id="imghead2" width="350" height="200" />
					 </div>
                   </div>
                  </div>
                   <div class="control-group">
                   <label class="control-label">图三</label>
                    <div class="controls">
                     <input name="photoFile3" type="file" class="simple_form"  onchange="preview(this,'preview3','imghead3',350,200)" id="photo3"/>(图三选填)
                     <div id="preview3">
								<img id="imghead3" width="350" height="200" />
					 </div>
                    </div>
                  </div>
                  
                   <div class="control-group">
                   <label class="control-label">促销</label>
                    <div class="controls">
                     <select class="span2" onchange="iscuxiao();" id="cuxiaoselect">
                      <option value="0">否</option>
                      <option value="1">是</option>
                     </select>
                    &nbsp;&nbsp;&nbsp;
                    <input type="text" class="span5" placeholder="促销价" name='promotion' disabled="disabled" id="cuxiaoinput" onkeyup="value=this.value.replace(/\D+/g,'')">
                    <input type="hidden" class="span5" name='promotion' id="cuxiaohidden" value="0">
                    </div>
                  </div>
                  
                   <div class="control-group">
                   <label class="control-label">状态</label>
                    <div class="controls">
                    <table> 
                    <tr>
                     <td width="250xp"><label class="radio"><input type="radio" id="ru" name="type">入库</label></td>
                     <td width="250xp"><label class="radio"><input type="radio" id="shang" name="type">上架</label></td>
                     </tr>
                     </table>
                    </div>
                  </div>
                                    
                  <div class="control-group">
                   <label class="control-label">商品介绍</label>
                    <div class="controls">
                        <textarea name="introduction" id="introduction">
                       	
                        </textarea>
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
    	notcuxiao();
    	radio();
	}
    
    //radio值
    function radio() {
    	 $("#ru").attr('value','0');
    	 $("#shang").attr('value','1');
	}
    
	//前台验证
	function isfull() {
		//是否填写姓名
		var txt=document.getElementById("title");//通过ID属性控制对象
		var message=txt.value;
		if(message==""){
			alertify.alert( '请填写标题', function () {
		           // after clicking OK
		           txt.focus();//获得焦点，友好性
		       });
			return false;
		}
		
		//是否填写品牌
		var txt=document.getElementById("brand");//通过ID属性控制对象
		var message=txt.value;
			
		if(message==""){
			alertify.alert( '请输入品牌', function () {
		           // after clicking OK
		           txt.focus();//获得焦点，友好性
		       });
			return false;
		}
		
		//是否填写型号
		var txt=document.getElementById("model");//通过ID属性控制对象
		var message=txt.value;
			
		if(message==""){
			alertify.alert( '请输入型号', function () {
		           // after clicking OK
		           txt.focus();//获得焦点，友好性
		       });
			return false;
		}
		
		//是否填写库存
		var txt=document.getElementById("stock");//通过ID属性控制对象
		var message=txt.value;
			
		if(message==""){
			alertify.alert( '请输入库存', function () {
		           // after clicking OK
		           txt.focus();//获得焦点，友好性
		       });
			return false;
		}
		
		//是否填写价格
		var price=document.getElementById("price");//通过ID属性控制对象
		var message=price.value;
			
		if(message==""){
			alertify.alert( '请输入价格', function () {
		           // after clicking OK
		           price.focus();//获得焦点，友好性
		       });
			return false;
		}
		//是否选择分类
		if(document.getElementById('secondClass').value=='0') {
			alertify.alert( '请选择分类', function () {
		           // after clicking OK
		       });
		       return false;
		}
		    
		//是否选择主图
		var txt=document.getElementById("photo1");//通过ID属性控制对象
		var message=txt.value;
		if(message==""){
			alertify.alert( '请选择主图', function () {
		           // after clicking OK
		           txt.focus();//获得焦点，友好性
		       });
			return false;
		}
		
		//是否选择图二
		var txt=document.getElementById("photo2");//通过ID属性控制对象
		var message=txt.value;
		if(message==""){
			alertify.alert( '请选择图二', function () {
		           // after clicking OK
		           txt.focus();//获得焦点，友好性
		       });
			return false;
		}
		
		//是否填写促销
		var txt=document.getElementById("cuxiaoinput");//通过ID属性控制对象
		var message=txt.value;
		if(document.getElementById('cuxiaoselect').value==1){
			if(message==""){
				alertify.alert( '促销价不能为空', function () {
			           // after clicking OK
			           txt.focus();//获得焦点，友好性
			       });
				return false;
			}else if(message=="0"){
				alertify.alert( '促销价不能为0', function () {
			           // after clicking OK
			           txt.focus();//获得焦点，友好性
			       });
				return false;
			}else if(parseInt(message)>parseInt(price.value)){
				alertify.alert( '促销价不能大于价格', function () {
			           // after clicking OK
			           txt.focus();//获得焦点，友好性
			       });
				return false;
			}
		}
		
		  //radio
		  var radio=document.getElementsByName('type');
		 if(!radio[0].checked&&!radio[1].checked){
			 alertify.alert( '请选择状态', function () {
		           // after clicking OK
		           radio.focus();//获得焦点，友好性
		       });
			return false;
		 }
		
		//文本框
		 var str=document.getElementById("introduction").value.replace(/(^[\s\t\xa0\u3000]+)|([\u3000\xa0\s\t]+$)/g, "");
		  if(str==""){
			  alertify.alert( '介绍不能为空', function () {
		           // after clicking OK
		           txt.focus();//获得焦点，友好性
		       });
			return false;
		  }
		
		return true;
	}
	
	//促销
	function iscuxiao(){
		 $("#cuxiaoselect").attr("onchange","notcuxiao();");
		 $("#cuxiaohidden").removeAttr('name');
		 $("#cuxiaoinput").removeAttr('disabled');
	}
	
	//不促销
	function notcuxiao(){
		 $("#cuxiaoselect").attr("onchange","iscuxiao();");
		 $("#cuxiaohidden").attr('name','promotion');
		 $("#cuxiaoinput").attr('disabled','disabled').removeAttr('value');
	}
	
	//ajax获得二级分类
	function secondClasses(){
		var f_id=$("#firstClass").val();
		var url="goods/secondClassList";
		var param={
				"f_id":f_id
		};
		$.post(url,param,function(secondClass){
			var $secondClass = $("#secondClass");
			$secondClass.empty();
			$secondClass.append("<option value='0'>=请选择二级分类=</option>"); 
			for(var i=0;i<secondClass.length;i++){
				$secondClass.append("<option value='"+secondClass[i].s_id+"'>"+secondClass[i].name+"</option>");
			}
		});
	}
    </script>
  </body>
</html>