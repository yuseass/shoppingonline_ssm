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
<title>首页</title>
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
</head>
	
<body>
<!-- header -->
	<div class="header">
			<div class="header-grid">
					<div class="container">
						<%--wow动画--%>
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
						<div style="display:none;">
							<p><a href="javascript:void(0);" class="simpleCart_empty" id="empty">清空购物车</a></p>
						</div>
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
						<%--data-toggle指以什么事件类型触发--%>
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
												<i class="glyphicon glyphicon-envelope" ></i><a href="">企业邮箱</a>
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
<c:if test="${customer.c_id != null}">
	<div id="atc">
		<c:forEach items="${cartList}" var="c">
			<c:forEach items="${list}" var="g">
				<c:if test="${c.g_id == g.g_id}">
					<c:forEach begin="1" end="${c.num}">
						<div class="women simpleCart_shelfItem" style="display:none;">
							<c:choose>
						        <c:when test="${g.promotion eq '0'}">
						        	<p class="ba-price"><em class="item_price">￥${g.price}</em></p>
						        </c:when>
						        <c:otherwise>
									<p class="ba-price"><em class="item_price">￥${g.promotion}</em></p>
						      	</c:otherwise>
					      	</c:choose>
							<a href="javascript:void(0);" data-text="数据库信息" class="but-hover1 item_add" >数据库信息</a>
						</div>	
					</c:forEach>
				</c:if>
			</c:forEach>
		</c:forEach>
	</div>
</c:if>
<!-- banner -->
	<div class="banner">
	
	
	<div class="banner-right">
					<ul id="flexiselDemo2">			
						<li><div class="banner-grid">
						<h2>${top1.introduction}</h2>
						<div class="wome">
								<a href="goods/get?g_id=${top1.g_id}" ><img class="img-responsive" src="${basePath}upload/${top1.photo1}" alt="" height="200px"/>
								</a>
								<div class="women simpleCart_shelfItem">
									<a href="#"><img src="images/ll.png" alt="" ></a>
									<h6 ><a href="goods/get?g_id=${top1.g_id}">${top1.title}</a></h6>
									<c:choose>
				                    	<c:when test="${top1.promotion eq '0'}">
				                    		<p class="ba-price"><em class="item_price">￥${top1.price}</em></p>
				                    	</c:when>
				                   	 	<c:otherwise>
											<p class="ba-price"><del>￥${top1.price}</del><em class="item_price">￥${top1.promotion}</em></p>
				      				  	</c:otherwise>
				      				</c:choose>
				      				<c:choose>
				                    	<c:when test="${customer.c_id eq null}">
											<a href="customer/loginShow" data-text="添加到购物车" class="but-hover1">添加到购物车</a>
				                    	</c:when>
				                   	 	<c:otherwise>
											<a href="javascript:void(0);" onclick="atc('${top1.g_id}');" data-text="添加到购物车" class="but-hover1 item_add">添加到购物车</a>
				      				  	</c:otherwise>
				      				</c:choose>
								</div>							
								</div>							
							</div></li>
						<li><div class="banner-grid">
						<h2>${top2.introduction}</h2>
						<div class="wome">
								<a href="goods/get?g_id=${top2.g_id}" ><img class="img-responsive" src="${basePath}upload/${top2.photo1}" alt="" height="100"/>
								</a>	
								<div class="women simpleCart_shelfItem">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6 ><a href="goods/get?g_id=${top2.g_id}">${top2.title}</a></h6>
									
									<c:choose>
				                    	<c:when test="${top2.promotion eq '0'}">
				                    		<p class="ba-price"><em class="item_price">￥${top2.price}</em></p>
				                    	</c:when>
				                   	 	<c:otherwise>
											<p class="ba-price"><del>￥${top2.price}</del><em class="item_price">￥${top2.promotion}</em></p>
				      				  	</c:otherwise>
				      				</c:choose>
				      				<c:choose>
				                    	<c:when test="${customer.c_id eq null}">
											<a href="customer/loginShow" data-text="添加到购物车" class="but-hover1">添加到购物车</a>
				                    	</c:when>
				                   	 	<c:otherwise>
											<a href="javascript:void(0);" onclick="atc('${top2.g_id}');" data-text="添加到购物车" class="but-hover1 item_add">添加到购物车</a>
				      				  	</c:otherwise>
				      				</c:choose>
								</div>						
								</div>						
							</div></li>
						<li><div class="banner-grid">
						<h2>${top3.introduction}</h2>
						<div class="wome">
								<a href="goods/get?g_id=${top3.g_id}" ><img class="img-responsive" src="${basePath}upload/${top3.photo1}" alt="" width="200px" height="200px"/>
								</a>	
								<div class="women simpleCart_shelfItem">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6 ><a href="goods/get?g_id=${top3.g_id}">${top3.title}</a></h6>
									<c:choose>
				                    	<c:when test="${top3.promotion eq '0'}">
				                    		<p class="ba-price"><em class="item_price">￥${top3.price}</em></p>
				                    	</c:when>
				                   	 	<c:otherwise>
											<p class="ba-price"><del>￥${top3.price}</del><em class="item_price">￥${top3.promotion}</em></p>
				      				  	</c:otherwise>
				      				</c:choose>
									<c:choose>
				                    	<c:when test="${customer.c_id eq null}">
											<a href="customer/loginShow" data-text="添加到购物车" class="but-hover1">添加到购物车</a>
				                    	</c:when>
				                   	 	<c:otherwise>
											<a href="javascript:void(0);" onclick="atc('${top3.g_id}');" data-text="添加到购物车" class="but-hover1 item_add">添加到购物车</a>
				      				  	</c:otherwise>
				      				</c:choose>
								</div>						
								</div>						
							</div></li>
						
					
					</ul>
					<script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo2").flexisel({
				visibleItems: 1,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 5000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 1
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 1
		    		}
		    	}
		    });
		    
		});
	</script>
		<script type="text/javascript" src="js/jquery.flexisel.js"></script>

					</div>

				
				</div>

	</div>
<!-- //banner -->
<!--content-->
		<div class="content">
		<div class="content-head">
					
					<div class="col-md-6 col-m1 animated wow fadeInLeft" data-wow-delay=".1s">
						<div class="col-1">
						<div class="col-md-6 col-2">
							<a href="goods/get?g_id=${mid1.g_id}"><img src="${basePath}upload/${mid1.photo1}" class="img-responsive" alt="">
							</a></div>
							<div class="col-md-6 col-p">
								<h5 align="left">${mid1.title}</h5>
								<p align="left">${mid1.introduction}</p>
								<p align="left"><a href="goods/get?g_id=${mid1.g_id}" class="shop" data-hover="<<<go">&#60;&#60;&#60;go</a></p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-1">
						<div class="col-md-6 col-p">
								<h5>${mid2.title}</h5>
								<p>${mid2.introduction}</p>
								<a href="goods/get?g_id=${mid2.g_id}" class="shop" data-hover="go>>>">go&#62;&#62;&#62;</a>
						</div>
						<div class="col-md-6 col-2">
							<a href="goods/get?g_id=${mid2.g_id}"><img src="${basePath}upload/${mid2.photo1}" class="img-responsive" alt="">
							</a></div>
							<div class="clearfix"> </div>
						</div>
					</div>
					
					<div class="col-md-6 col-m1 animated wow fadeInRight" data-wow-delay=".1s">
						<div class="col-1">
						<div class="col-md-6 col-2">
							<a href="goods/get?g_id=${mid3.g_id}"><img src="${basePath}upload/${mid3.photo1}" class="img-responsive" alt="">
							</a></div>
							<div class="col-md-6 col-p">
								<h5 align="left">${mid3.title}</h5>
								<p align="left">${mid3.introduction}</p>
								<p align="left"><a href="goods/get?g_id=${mid3.g_id}" class="shop" data-hover="<<<go">&#60;&#60;&#60;go</a></p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-1">
						<div class="col-md-6 col-p">
								<h5>${mid4.title}</h5>
								<p>${mid4.introduction}</p>
								<a href="goods/get?g_id=${mid4.g_id}" class="shop" data-hover="go>>>">go&#62;&#62;&#62;</a>
							</div>
						<div class="col-md-6 col-2">
							<a href="goods/get?g_id=${mid4.g_id}"><img src="${basePath}upload/${mid4.photo1}" class="img-responsive" alt="">
							</a></div>
							<div class="clearfix"> </div>
						</div>
					
					
					</div>
					<div class="clearfix"></div>
					</div>	
				</div>
				
			<!---->
			
				<div class="content-top">
					<div class="col-md-5 col-md1 animated wow fadeInLeft" data-wow-delay=".1s">
						<div class="col-3">
							<img src="images/pi1.jpg" class="img-responsive " alt="">
							<div class="col-pic">	
								<h5> 女士精选</h5>
							</div>
						</div>
						
					</div>
					<div class="col-md-7 col-md2 animated wow fadeInRight" data-wow-delay=".1s">
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="goods/get?g_id=${woman1.g_id}">
											<div class="grid-img">
												<img  src="${basePath}upload/${woman1.photo1}" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="${basePath}upload/${woman1.photo2}" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="goods/get?g_id=${woman1.g_id}">${woman1.title}</a></h6>
									<c:choose>
				                    	<c:when test="${woman1.promotion eq '0'}">
				                    		<p class="ba-price"><em class="item_price">￥${woman1.price}</em></p>
				                    	</c:when>
				                   	 	<c:otherwise>
											<p class="ba-price"><del>￥${woman1.price}</del><em class="item_price">￥${woman1.promotion}</em></p>
				      				  	</c:otherwise>
				      				</c:choose>
									<c:choose>
				                    	<c:when test="${customer.c_id eq null}">
											<a href="customer/loginShow" data-text="添加到购物车" class="but-hover1">添加到购物车</a>
				                    	</c:when>
				                   	 	<c:otherwise>
											<a href="javascript:void(0);" onclick="atc('${woman1.g_id}');" data-text="添加到购物车" class="but-hover1 item_add">添加到购物车</a>
				      				  	</c:otherwise>
				      				</c:choose>
								</div>
							</div>
						</div>
				
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="goods/get?g_id=${woman2.g_id}">
											<div class="grid-img">
												<img  src="${basePath}upload/${woman2.photo1}" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="${basePath}upload/${woman2.photo2}" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="goods/get?g_id=${woman2.g_id}">${woman2.title}</a></h6>
									<c:choose>
				                    	<c:when test="${woman2.promotion eq '0'}">
				                    		<p class="ba-price"><em class="item_price">￥${woman2.price}</em></p>
				                    	</c:when>
				                   	 	<c:otherwise>
											<p class="ba-price"><del>￥${woman2.price}</del><em class="item_price">￥${woman2.promotion}</em></p>
				      				  	</c:otherwise>
				      				</c:choose>
									<c:choose>
				                    	<c:when test="${customer.c_id eq null}">
											<a href="customer/loginShow" data-text="添加到购物车" class="but-hover1">添加到购物车</a>
				                    	</c:when>
				                   	 	<c:otherwise>
											<a href="javascript:void(0);" onclick="atc('${woman2.g_id}');" data-text="添加到购物车" class="but-hover1 item_add">添加到购物车</a>
				      				  	</c:otherwise>
				      				</c:choose>
								</div>
							</div>
						</div>
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
						<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="goods/get?g_id=${woman3.g_id}">
											<div class="grid-img">
												<img  src="${basePath}upload/${woman3.photo1}" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="${basePath}upload/${woman3.photo2}" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="goods/get?g_id=${woman3.g_id}">${woman3.title}</a></h6>
									<c:choose>
				                    	<c:when test="${woman3.promotion eq '0'}">
				                    		<p class="ba-price"><em class="item_price">￥${woman3.price}</em></p>
				                    	</c:when>
				                   	 	<c:otherwise>
											<p class="ba-price"><del>￥${woman3.price}</del><em class="item_price">￥${woman3.promotion}</em></p>
				      				  	</c:otherwise>
				      				</c:choose>
									<c:choose>
				                    	<c:when test="${customer.c_id eq null}">
											<a href="customer/loginShow" data-text="添加到购物车" class="but-hover1">添加到购物车</a>
				                    	</c:when>
				                   	 	<c:otherwise>
											<a href="javascript:void(0);" onclick="atc('${woman3.g_id}');" data-text="添加到购物车" class="but-hover1 item_add">添加到购物车</a>
				      				  	</c:otherwise>
				      				</c:choose>
								</div>
							</div>
						</div>
					<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
				<!----->
				<!---->
				<div class="content-top">
					
					<div class="col-md-7 col-md2 animated wow fadeInLeft" data-wow-delay=".1s">
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="goods/get?g_id=${man1.g_id}">
											<div class="grid-img">
												<img  src="${basePath}upload/${man1.photo1}" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="${basePath}upload/${man1.photo2}" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="goods/get?g_id=${man1.g_id}">${man1.title}</a></h6>
									<c:choose>
				                    	<c:when test="${man1.promotion eq '0'}">
				                    		<p class="ba-price"><em class="item_price">￥${man1.price}</em></p>
				                    	</c:when>
				                   	 	<c:otherwise>
											<p class="ba-price"><del>￥${man1.price}</del><em class="item_price">￥${man1.promotion}</em></p>
				      				  	</c:otherwise>
				      				</c:choose>
									<c:choose>
				                    	<c:when test="${customer.c_id eq null}">
											<a href="customer/loginShow" data-text="添加到购物车" class="but-hover1">添加到购物车</a>
				                    	</c:when>
				                   	 	<c:otherwise>
											<a href="javascript:void(0);" onclick="atc('${man1.g_id}');" data-text="添加到购物车" class="but-hover1 item_add">添加到购物车</a>
				      				  	</c:otherwise>
				      				</c:choose>
								</div>
							</div>
							
						</div>
				
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="goods/get?g_id=${man2.g_id}">
											<div class="grid-img">
												<img  src="${basePath}upload/${man2.photo1}" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="${basePath}upload/${man2.photo2}" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="goods/get?g_id=${man2.g_id}">${man2.title}</a></h6>
									<c:choose>
				                    	<c:when test="${man2.promotion eq '0'}">
				                    		<p class="ba-price"><em class="item_price">￥${man2.price}</em></p>
				                    	</c:when>
				                   	 	<c:otherwise>
											<p class="ba-price"><del>￥${man2.price}</del><em class="item_price">￥${man2.promotion}</em></p>
				      				  	</c:otherwise>
				      				</c:choose>
									<c:choose>
				                    	<c:when test="${customer.c_id eq null}">
											<a href="customer/loginShow" data-text="添加到购物车" class="but-hover1">添加到购物车</a>
				                    	</c:when>
				                   	 	<c:otherwise>
											<a href="javascript:void(0);" onclick="atc('${man2.g_id}');" data-text="添加到购物车" class="but-hover1 item_add">添加到购物车</a>
				      				  	</c:otherwise>
				      				</c:choose>
								</div>
							</div>
						</div>
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
						<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="goods/get?g_id=${man3.g_id}">
											<div class="grid-img">
												<img  src="${basePath}upload/${man3.photo1}" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="${basePath}upload/${man3.photo2}" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women" >
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="goods/get?g_id=${man3.g_id}">${man3.title}</a></h6>
									<c:choose>
				                    	<c:when test="${man3.promotion eq '0'}">
				                    		<p class="ba-price"><em class="item_price">￥${man3.price}</em></p>
				                    	</c:when>
				                   	 	<c:otherwise>
											<p class="ba-price"><del>￥${man3.price}</del><em class="item_price">￥${man3.promotion}</em></p>
				      				  	</c:otherwise>
				      				</c:choose>
									<c:choose>
				                    	<c:when test="${customer.c_id eq null}">
											<a href="customer/loginShow" data-text="添加到购物车" class="but-hover1">添加到购物车</a>
				                    	</c:when>
				                   	 	<c:otherwise>
											<a href="javascript:void(0);" onclick="atc('${man3.g_id}');" data-text="添加到购物车" class="but-hover1 item_add">添加到购物车</a>
				      				  	</c:otherwise>
				      				</c:choose>
								</div>
							</div>
						</div>
					<div class="clearfix"></div>
					</div>
					<div class="col-md-5 col-md1 animated wow fadeInRight" data-wow-delay=".1s">
						<div class="col-3">
							<img src="images/pi2.jpg" class="img-responsive " alt="">
							<div class="col-pic">
								<h5> 男士精选</h5>
								<p></p>
							</div>
						</div>
						
					</div>
					<div class="clearfix"></div>
				</div>
			
			
				<!--products-->
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
</body>
<script type="text/javascript">
$(window).load(function() {
	document.getElementById("empty").click();
	var atc =document.getElementById("atc").getElementsByTagName("a");
	for(var i = 0, j = atc.length; i < j; i++)
	{
		atc[i].click();
	}
});
//ajax添加购物车
function atc(g_id) {
	var url = "cart/add";
	var param={
			"g_id":g_id
	};
	$.post(url,param,function(){
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
</html>