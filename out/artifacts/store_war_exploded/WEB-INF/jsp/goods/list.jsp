<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%
	String path = request.getContextPath() + "/";
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()+ path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>title</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Classic Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 
</script>
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
<form action="goods/paging" method="post"onsubmit="return isfull();" id="myform" enctype="multipart/form-data">
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
						<div class="col-sm-11">
								<input type="text" class="form-control" name="key" id="key" value="${s.key}" placeholder="请输入搜索文字">
							</div>
							<input type="submit" class="btn btn-1 btn-default" value="搜索">
					</div>
				</div>	
			</div>
		</div>
	</div>
<!-- //header -->
							
			
	<!-- //header -->
	<!--banner-->
	<div class="banner-top">
		<div class="container">
			<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">商品列表</h2>
			<h3 class="animated wow fadeInRight" data-wow-delay=".5s">
				<a href="index/homeShow">首页</a><label>/</label>条件查询<label>/</label>商品列表
			</h3>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--content-->
	<div class="product">
		<div class="container">
			<div class="col-md-3 product-bottom">
				<!--categories-->
				<div class="categories animated wow fadeInUp animated" data-wow-delay=".5s">
					<h3>选择分类</h3>
					<br />
					<br />
					<table>
						<tr>
							<td width="100%">一级分类</td>
							<td align="right">
								 <select onchange="secondClasses();" id="firstClass">
			                      	<option selected="selected" value="0">=请选择一级分类=</option>
			                      	<c:forEach items="${firstClassList}" var="f">
			                      	<option value="${f.f_id}">${f.name}</option>
			                      	</c:forEach>
			                      </select>
							</td>
						</tr>
						<tr height="40"></tr>
						<tr>
							<td width="100%">二级分类</td>
							<td align="right">
								 <select id="secondClass" name="s_id">
								 <c:choose>
				                    	<c:when test="${s.s_id eq 0}">
			                      			<option selected="selected" value="0">=请选择二级分类=</option>
				                    	</c:when>
				                   	 	<c:otherwise>
			                      			<option selected="selected" value="${s.s_id}">=上次默认选择分类=</option>
				      				  	</c:otherwise>
				      				</c:choose>
			                      </select>
							</td>
						</tr>
					</table>
				</div>
				<br />
				<br />
				<!--//menu-->
				<!--price-->
				<div class="price animated wow fadeInUp animated" data-wow-delay=".5s">
					<h3>价格区间</h3>
					<div class="price-head">
						<div class="col-md-6 price-head1">
							<div class="price-top1">
								<span class="price-top">最低价￥</span> <input type="text"  name="minPrice" value="${s.minPrice}">
							</div>
						</div>
						<div class="col-md-6 price-head2">
							<div class="price-top1">
								<span class="price-top">最高价￥</span> <input type="text"  name="maxPrice" value="${s.maxPrice}">
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<!--//price-->
				<!--price-->
				<div class="price animated wow fadeInUp animated" data-wow-delay=".5s">
					<h3>筛选</h3>
					<br />
					<br />
					<p align="center"><input type="submit" class="btn btn-lg btn-default" value="搜索"></p>
				</div>
				<!--//price-->
			</div>
			<div class="col-md-9 animated wow fadeInRight" data-wow-delay=".5s">

				<div class="mid-popular">
				
				<c:forEach var="g" items="${list}">
				<br>
					<div class="col-sm-3">
						<div class="grid-pro">
							<div class=" grid-product ">
								<figure> <a href="goods/get?g_id=${g.g_id}">
									<div class="grid-img">
										<img src="${basePath}upload/${g.photo1}" class="img-responsive" alt="">
									</div>
									<div class="grid-img">
										<img src="${basePath}upload/${g.photo2}" class="img-responsive" alt="">
									</div>
								</a> </figure>
							</div>
							<div class="women">
								<a href="javascript:void(0);"><img src="images/ll.png" alt=""></a>
								<h6>
									<a href="goods/get?g_id=${g.g_id}">${g.title}</a>
								</h6>
								<p>
									<c:choose>
				                    	<c:when test="${g.promotion eq '0'}">
				                    		<p class="ba-price"><em class="item_price">￥${g.price}</em></p>
				                    	</c:when>
				                   	 	<c:otherwise>
											<p class="ba-price"><del>￥${g.price}</del><em class="item_price">￥${g.promotion}</em></p>
				      				  	</c:otherwise>
				      				</c:choose>
								</p>
								<c:choose>
				                    <c:when test="${customer.c_id eq null}">
										<a href="customer/loginShow" data-text="添加到购物车" class="but-hover1">添加到购物车</a>
				                    </c:when>
				                   	 <c:otherwise>
										<a href="javascript:void(0);" onclick="atc('${g.g_id}');" data-text="添加到购物车" class="but-hover1 item_add">添加到购物车</a>
				      				  </c:otherwise>
				      			</c:choose>
							</div>
						</div>
					</div>
					</c:forEach>
					<div class="clearfix"></div>
				</div>
			</div>

			<p align="center"><jsp:include page="/plugins/paging/paging.jsp"></jsp:include></p>

		</div class="clearfix"></div>
	</div>
	</div>
	</form>
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
	<script src="plugins/jQuery/jquery.js"></script>
	<script type="text/javascript">
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
		var txt=document.getElementById("secondClass");//通过ID属性控制对象
		var message=txt.value;
		if(message==0){
			alert("还没有选择分类");
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