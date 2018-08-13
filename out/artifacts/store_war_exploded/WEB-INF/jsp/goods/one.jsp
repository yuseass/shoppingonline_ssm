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
	
<body>
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
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">商品详情</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="index/homeShow">主页</a><label>/</label>商品详情</h3>
		<div class="clearfix"> </div>
	</div>
</div>
	<!--content-->
		<div class="product">
			<div class="container">
		<div class="col-md-3 product-bottom ">
		<!--//menu-->
		<!--price-->
			<div class="sellers animated wow fadeInDown" data-wow-delay=".5s">
					
								<h3 class="best">特别推荐</h3>
					<div class="product-head">
					<div class="product-go">
						<div class=" fashion-grid">
									<a href="goods/get?g_id=1"><img class="img-responsive " src="${basePath}upload/pr.jpg" alt=""></a>
									
								</div>
							<div class=" fashion-grid1">
								<h6 class="best2"><a href="goods/get?g_id=1">小粉衣服 </a></h6>
								<span class=" price-in1"> <del>￥69</del>￥59</span>
								<p>这是一件简单的小粉衣</p>
							</div>
								
							<div class="clearfix"> </div>
							</div>
							<div class="product-go">
						<div class=" fashion-grid">
									<a href="goods/get?g_id=2"><img class="img-responsive " src="${basePath}upload/pr2.jpg" alt=""></a>
									
								</div>
							<div class=" fashion-grid1">
								<h6 class="best2"><a href="goods/get?g_id=2">小黑裤子</a></h6>
								<span class=" price-in1"> <del>￥79</del>$￥59</span>
								<p>这是一件简单的小黑裤</p>
							</div>
							<div class="clearfix"> </div>
							</div>
							
							</div>
				</div>
				<!---->
 	</div>
			<div class="col-md-9 animated wow fadeInRight" data-wow-delay=".5s">
				<div class="col-md-5 grid-im">		
		<div class="flexslider">
			  <ul class="slides">
			    <li data-thumb="${basePath}upload/${g.photo1}">
			        <div class="thumb-image"> <img src="${basePath}upload/${g.photo1}" data-imagezoom="true" class="img-responsive"> </div>
			    </li>
			    <li data-thumb="${basePath}upload/${g.photo2}">
			         <div class="thumb-image"> <img src="${basePath}upload/${g.photo2}" data-imagezoom="true" class="img-responsive"> </div>
			    </li>
			    <c:if test="${g.photo3 != ''}">
				    <li data-thumb="${basePath}upload/${g.photo3}">
				       <div class="thumb-image"> <img src="${basePath}upload/${g.photo3}" data-imagezoom="true" class="img-responsive"> </div>
				    </li> 
			    </c:if>
			  </ul>
		</div>
	</div>	
<div class="col-md-7 single-top-in">
						<div class="span_2_of_a1 simpleCart_shelfItem">
				<h3>${g.title}</h3>
				<p class="in-para">
					<img src="images/tick1.png">七天无理由退货
					&nbsp;
					<img src="images/tick1.png">72小时内发货
					&nbsp;
					<img src="images/tick1.png">急速退款
					&nbsp;
					<img src="images/tick1.png">蚂蚁花呗
				</p>
			    <div class="price_single">
			    <c:choose>
					<c:when test="${g.promotion eq '0'}">
						<span class="reducedfrom item_price">￥${g.price}</span>
					</c:when>
					<c:otherwise>
						<span class="reducedfrom item_price"><del>￥${g.price}</del>￥${g.promotion}</span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${customer.c_id eq null}">
						<a href="customer/loginShow" data-text="添加到购物车" class="but-hover1">添加到购物车</a>
					</c:when>
					<c:otherwise>
						<a href="javascript:void(0);" onclick="atc('${g.g_id}');" data-text="添加到购物车" class="but-hover1 item_add">添加到购物车</a>
					</c:otherwise>
				</c:choose>
				 <div class="clearfix"></div>
				</div>
				
				 
			   
			<div class="clearfix"> </div>
			</div>
		   <!----- tabs-box ---->
		<div class="sap_tabs">	
				     <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						  <ul class="resp-tabs-list">
						  	  <li class="resp-tab-item " aria-controls="tab_item-0" role="tab"><span>商品介绍</span></li>
							  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>颜色分类</span></li>
							<!----
							  <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>商品评价</span></li>
							---->
							  <div class="clearfix"></div>
						  </ul>				  	 
							<div class="resp-tabs-container">
							    <h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>Product Description</h2><div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
									<div class="facts">
									<div class="color"><p>品牌</p>
										<span >${g.brand}</span>
										<div class="clearfix"></div>
									</div>
									<div class="color">
										<p>型号</p>
										<span >${g.model}</span>
										<div class="clearfix"></div>
									</div>
									  <p > ${g.introduction}</p>
							        </div>

							    	</div>
							      <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>Additional Information</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
										<div class="facts1">
					
						<div class="color"><p>颜色</p>
							<span >蓝,黑,灰,红</span>
							<div class="clearfix"></div>
						</div>
						<div class="color">
							<p>尺寸</p>
							<span >S, M, L, XL</span>
							<div class="clearfix"></div>
						</div>
					        
			 </div>

								</div>									
							      <h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span>Reviews</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
									 <div class="comments-top-top">
				<div class="top-comment-left">
					<img class="img-responsive" src="images/co.png" alt="">
				</div>
				<div class="top-comment-right">
					<h6><a href="#">Hendri</a> - September 3, 2014</h6>
					
									<p>Wow nice!</p>
				</div>
				<div class="clearfix"> </div>
				<a class="add-re" href="single.html">Add Review</a>
			</div>


							 </div>
					      </div>
					 </div>
					 <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
			   </script>	
<!---->
					</div>
			
</div>
<!----->
<div class="clearfix"> </div>
<div class=" col-md-si">
				
						<div class="clearfix"> </div>
		</div>
			</div class="clearfix"></div>
			</div>			
		</div>
				<!--//products-->
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
<script src="js/imagezoom.js"></script>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

<script>
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>

<script type="text/javascript">
//ajax添加购物车
function atc(g_id) {
	var url = "cart/add";
	var param={
			"g_id":g_id
	};

	$.post(url,param,function(){
        alert("添加成功");
	});

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
//ajax清空购物车
function ec() {
	var url = "cart/empty";
	var param={
	};
	$.post(url,param,function(){
	});
}
</script>

</body>
</html>