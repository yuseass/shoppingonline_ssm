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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>title</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Classic Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="js/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet"> 
<script src="js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
<!-- //animation-effect -->
	
<body onload="load();">
<!-- header -->
	<div class="header">
			<div class="header-grid">
					<div class="container">
				<div class="header-left animated wow fadeInLeft" data-wow-delay=".5s">
					<ul>
					 <c:choose>
                    	<c:when test="${customer.c_id eq null}">
						<li>请登录</li>
                    	</c:when>
                   	 	<c:otherwise>
						<li><img src="upload/${customer.photo}" height="30"> </li>
						<li>欢迎您  ${customer.account}</li>
      				  	</c:otherwise>
      				</c:choose>
					
						
					</ul>
				</div>
				<div class="header-right animated wow fadeInRight" data-wow-delay=".5s">
				<div class="header-right1 ">
					<ul>
						<c:choose>
	                    	<c:when test="${customer.c_id eq null}">
								<li><i class="glyphicon glyphicon-log-in" ></i><a href="customer/loginShow">登录</a></li>
								<li><i class="glyphicon glyphicon-book" ></i><a href="customer/registerShow">注册</a></li>
	                    	</c:when>
	                   	 	<c:otherwise>
								<li><i class="glyphicon glyphicon-log-out" ></i><a href="customer/logout">注销</a></li>
	      				  	</c:otherwise>
	      				</c:choose>
					</ul>
				</div>
				<div class="header-right2">
					<div class="cart box_1">
					<c:choose>
                    	<c:when test="${customer.c_id eq null}">
							<a href="customer/loginShow">
                    	</c:when>
                   	 	<c:otherwise>
							<a href="cart/list?c_id=${customer.c_id}">
      				  	</c:otherwise>
      				</c:choose>
							<h3> <div class="total">
								<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> 件)</div>
								<img src="images/cart.png" alt="" />
							</h3>
						</a>
						<p><a href="javascript:void(0);" class="simpleCart_empty" id="ec" onclick="ec();">清空购物车</a></p>
						<div class="clearfix"> </div>
					</div>	
				</div>
				<div class="clearfix"> </div>
				</div>
				<div class="clearfix"></div>
			</div>
			</div>
			<div class="container">
			<div class="logo-nav">
				
					<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						 <div class="navbar-brand logo-nav-left ">
							<h1 class="animated wow pulse" data-wow-delay=".5s"><a href="index/homeShow">四海<span>淘</span></a></h1>
						</div>

					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav">
							<li class="active"><a href="index/homeShow" class="act">首页</a></li>	
							<!-- Mega Menu -->
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">热门推荐 <b class="caret"></b></a>
								<ul class="dropdown-menu multi">
									<div class="row">
										<div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>女装男装</h6>
                                                
                                                <li><a href="goods/paging?s_id=1">潮流女装</a></li>
                                                <li><a href="goods/paging?s_id=2">时尚男装</a></li>
                                                <li><a href="goods/paging?s_id=3">性感内衣</a></li>
                                                <li><a href="goods/paging?s_id=4">羽绒服</a></li>
                                        
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>鞋类箱包</h6>
                                                <li><a href="goods/paging?s_id=18">女鞋</a></li>
                                                <li><a href="goods/paging?s_id=19">潮流女包</a></li>
                                                <li><a href="goods/paging?s_id=20">帽子</a></li>
                                                <li><a href="goods/paging?s_id=21">单鞋</a></li>
                                                <li><a href="goods/paging?s_id=22">精品男包</a></li>
                                                <li><a href="goods/paging?s_id=23">腰带</a></li>

                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>运动户外</h6>
                                                <li><a href="goods/paging?s_id=35">帐篷</a></li>
                                                <li><a href="goods/paging?s_id=36">登山杖</a></li>
                                                <li><a href="goods/paging?s_id=37">睡袋</a></li>

                                            </ul>
                                        </div>
										<div class="clearfix"></div>
									</div>
									<div class="row-top">
										<div class="col-sm-6 row1">
											<a href=""><img src="images/me.jpg" alt="" class="img-responsive"></a>
										</div>
										<div class=" col-sm-6 row2">
											<a href=""><img src="images/me1.jpg" alt="" class="img-responsive"></a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>
							
							<li><a href="classes/classesShow"> 商品分类</a></li>
							
							<c:choose>
		                    	<c:when test="${customer.c_id eq null}">
									<li><a href="customer/loginShow">历史订单</a></li>
		                    	</c:when>
		                   	 	<c:otherwise>
									<li><a href="indent/paging">历史订单</a></li>
		      				  	</c:otherwise>
		      				</c:choose>
							
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">客户服务 <b class="caret"></b></a>
								<ul class="dropdown-menu multi multi2">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
												<i class="glyphicon glyphicon-headphones"></i><a>在线客服</a>
												<h6></h6>
												<i class="glyphicon glyphicon-envelope" ></i><a href="mailto:info@example.com">企业邮箱</a>
												<h6></h6>
												<i class="glyphicon glyphicon-earphone" ></i><a>联系电话</a>

											</ul>
										</div>
										<div class="clearfix">
										  <table>
										  	<tr>
											  <td><img src="images/wx1.jpg" alt="微信" height="200"></td>
											  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
											  <td><img src="images/wb1.jpg" alt="微博" height="200"></td>
											</tr>
										  	<tr align="center">
											  <td>微信</td>
											  <td></td>
											  <td>微博</td>
											</tr>
										  </table>
										</div>
									</div>
								</ul>
							</li>
							<c:choose>
		                    	<c:when test="${customer.c_id eq null}">
									<li><a href="customer/loginShow">个人信息</a></li>
		                    	</c:when>
		                   	 	<c:otherwise>
									<li><a href="address/list?c_id=${customer.c_id}">个人信息</a></li>
		      				  	</c:otherwise>
		      				</c:choose>
							
						</ul>
					</div>
					</nav>
				</div>
		</div>
		<div class="header">
			<div class="header-grid">
				<div class="container">
					<div class="header-md animated wow fadeInRight animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInRight;">
						<form action="goods/paging" method="post" onsubmit="return isfull();">
							<div class="col-sm-11">
         						<input type="text" class="form-control" name="key" id="key" placeholder="请输入搜索文字">
        					</div>
							<input type="submit" class="btn btn-1 btn-default" value="搜索">
						</form>
						
					</div>
				</div>	
			</div>
		</div>
	</div>
<!-- //header -->
<!--banner-->
<div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">购物车</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="index/homeShow">主页</a><label>/</label>购物车</h3>
		<div class="clearfix"> </div>
	</div>
</div>
<!-- contact -->
		<div class="check-out">	 
		<div class="container">	 
	 
			
		 <script>
				 $(document).ready(function(c) {
					$('.close1').on('click', function(c){
						$(this).parent().parent().parent().fadeOut('slow', function(c){
							$(this).remove();
							load();
						});
						});	  
					});
		</script>
		<c:if test="${empty list}">
		<p align="center"> <font size="5" color="green">购物车还很空 ，快去选购商品吧</font></p>
		</c:if>
		<c:if test="${not empty list}">
		<div class="page-header">
	<c:forEach items="${addressList}" var="a" varStatus="status">
      <div class="alert" role="alert" id="address">
        <input type="radio" name ="a_id" value="${a.a_id}" <c:if test="${status.first}"> checked="checked"</c:if>> &nbsp; <strong>${a.name}</strong> &nbsp;${a.province}&nbsp;${a.city}&nbsp;${a.street}&nbsp;邮编：&nbsp;${a.postcode}&nbsp;电话：&nbsp;${a.phone}
      </div>
      </c:forEach>
      </div>
 <table class="table animated wow fadeInLeft" data-wow-delay=".5s" id="mytable">
		  <tr>
			<th class="t-head head-it ">商品</th>
			<th class="t-head">价格</th>
			<th class="t-head">数量</th>
			<th class="t-head">总计</th> 
		  </tr>
		  <c:forEach items="${list}" var="g">
		  <tr class="cross1">
			<td class="ring-in t-data">
				<a href="single.html" class="at-in">
					<img src="${basePath}upload/${g.photo1}" class="img-responsive" alt="" width="100">
				</a>
			<div class="sed">
				<h5>${g.title}</h5>
			</div>
				<div class="clearfix"> </div>
				<a onclick="dc(${g.g_id})"><div class="close1"> </div></a>
			 </td>
			<td class="t-data">
			<c:choose>
				<c:when test="${g.promotion eq '0'}">
					￥<font class="jg">${g.price}</font>
				</c:when>
				<c:otherwise>
					￥<font class="jg">${g.promotion}</font>
				</c:otherwise>
			</c:choose>
			</td>
			<td class="t-data">
				<div class="quantity"> 
					<div class="quantity-select">
						<div class="entry value-minus" onclick="subtract(${g.g_id});">&nbsp;</div>
						<div class="entry value">${g.num}</div>
						<div class="entry value-plus active" onclick="atc(${g.g_id});">&nbsp;</div>
					</div>
				</div>
			
			</td>
			<td class="t-data">￥<font class="zj"></font></td>
		  </tr>
		  </c:forEach>
	</table>
		<div class=" cart-total">
			 <h5 class="continue" >总计</h5>
			 <div class="price-details">
			<select class="form-control">
				<option>中通快递</option>
				<option>圆通快递</option>
				<option>申通快递</option>
				<option>韵达快递</option>
				<option>顺丰快递</option>
				<option>其他</option>
			</select>
			 </div>	
			 <ul class="total_price">
			   <li class="last_price"> <h4>￥</h4></li>	
			   <li class="last_price"><span id="count"></span></li>
			   <div class="clearfix"> </div>
			 </ul>
			 <a onclick="sub();">生成订单并付款</a>
			 
			</div>
		 </c:if>
		
		 </div>
		 </div>
		 				<!--quantity-->
			<script>
			$('.value-plus').on('click', function(){
				var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
				divUpd.text(newVal);
				
				var p = $(this).parent().parent().parent().parent().find('.jg').text();
				$(this).parent().parent().parent().parent().find('.zj').text(parseInt(p)*newVal);
				
				$('#count').text(parseInt($('#count').text())+parseInt(p));
			});

			$('.value-minus').on('click', function(){
				var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
				if(newVal>=1){
					divUpd.text(newVal);
					
					var p = $(this).parent().parent().parent().parent().find('.jg').text();
					$(this).parent().parent().parent().parent().find('.zj').text(parseInt(p)*newVal);
					
					$('#count').text(parseInt($('#count').text())-parseInt(p));
				}else{
					$(this).parent().parent().parent().parent().find('.close1').click();
				}
			});
			</script>
			<!--quantity-->
			
<div class="social animated wow fadeInDown" data-wow-delay=".1s">
    <div class="container">
        <div class="col-sm-3 social-ic">
            <a>品类齐全<br/>轻松购物</a>
        </div>
        <div class="col-sm-3 social-ic">
            <a>多仓直发<br/>极速配送</a>
        </div>
        <div class="col-sm-3 social-ic">
            <a>正品行货<br/>精致服务</a>
        </div>
        <div class="col-sm-3 social-ic">
            <a>天天低价<br/>畅选无忧</a>
        </div>
    <div class="clearfix"></div>
    </div>
</div>

<!-- footer -->
    <div class="footer">
        <div class="container">
            <div class="copy-right animated wow fadeInUp" data-wow-delay=".5s">
                <p>Copyright &copy; QUT-ZHANGYUANYUAN.<a href="employee/loginShow">后台管理</a></p>
            </div>
        </div>
    </div>
<!-- //footer -->
<script type="text/javascript">
function load() {
	var total = 0 
	$('#mytable tr').each(function() { 
		$(this).find('td:eq(1)').each(function(){ 
			var p = parseFloat($(this).find('font').text());
			var n = parseFloat($(this).next().find('.entry').text());
			$(this).parent().find('.zj').text(p*n);
			total += p*n; 
		}); 
	}); 
	$('#count').html(total);
}
//随机颜色
      $(".alert").each(function(i, obj){
		    var j = Math.floor(Math.random()*4);
		    switch(j){
		        case 0:
		        $(this).addClass(" alert-success");
		        break;
		        case 1:
		        $(this).addClass(" alert-info");
		        break;
		        case 2:
		        $(this).addClass(" alert-warning");
		        break;
		        case 3:
		        $(this).addClass(" alert-danger");
		        break;
		        default:
		        $(this).addClass(" alert-success");
		        break;
		    }
		})
//ajax删除购物车
function dc(g_id) {
	var url = "cart/delete";
	var param={
			"g_id":g_id
	};
	$.post(url,param,function(){
	});
}
//ajax添加购物车
function atc(g_id) {
	var url = "cart/add";
	var param={
			"g_id":g_id
	};
	$.post(url,param,function(){
	});
}
//ajax减少购物车
function subtract(g_id) {
	var url = "cart/subtract";
	var param={
			"g_id":g_id
	};
	$.post(url,param,function(){
	});
}
//结算
function sub(){
	document.getElementById("ec").click();
	window.location.href="indent/add?money="+$('#count').text()+"&a_id="+ $('#address input[name="a_id"]:checked').val();;
}
//前台验证 	
function isfull() {
	//是否填写品牌
	var txt=document.getElementById("key");//通过ID属性控制对象
	var message=txt.value;
		
	if(message==""){
		return false;
	}	
	
	return true;
}

</script>
</body>
</html>