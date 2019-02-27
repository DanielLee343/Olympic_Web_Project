<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>Home Page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

<style>
h1 {
	font-family: "微软雅黑";
}

.navbar-brand {
	font-size: 25px;
}

.news {
	font-family: Helvetica Neue;
	font-size: 22px;
}

.jumbotron {
	margin-height: 0;
	margin-bottom: 0;
	height: 280px;
}

.center {
	text-align: center;
	left: 50%;
	margin: 0 auto;
}

.center>div {
	width: 300px;
	display: inline-block;
}

.down {
	background-color: #343A40;
	color: #fff;
	height: 130px;
}
</style>
</head>

<body>
	<!-- 导航栏 -->
  	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  		<a class="navbar-brand" href="pages/homePage.jsp" >Home</a>
  		
  		<div class="collapse navbar-collapse" id="collapsibleNavbar">
    		<ul class="navbar-nav">
      			<li class="nav-item">
        			<a class="nav-link" href="Medal_record">View competitions</a>
      			</li>
      			<li class="nav-item">
        			<a class="nav-link" href="pages/delegationPage.jsp">View Delegations</a>
      			</li>
     			<li class="nav-item">
       		 		<a class="nav-link" href="#">Others</a>
     		 	</li>    
    		</ul>
  		</div>
  		<a class="navbar-brand" href="pages/login.jsp">Log in</a> 
	</nav>

	<!-- 标题 -->
	<div class="jumbotron text-center">
		<img src="img/logo.png">
		<h1>2020 Japan Olympic Games</h1>
		<p style="font-size: 22px">Welcome all!</p>
	</div>

	<!-- 幻灯片 -->
	<div id="demo" class="carousel slide" data-ride="carousel">

		<!-- 指示符 -->
		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		</ul>

		<!-- 轮播图片 -->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<a href="pages/competitionPage.jsp"><img src="img/1.jpg" class="full-width"
					style="width: 100%;"></a>
			</div>
			<div class="carousel-item">
				<a href="pages/competitionPage.jsp"><img src="img/2.jpg" class="full-width"
					style="width: 100%;"></a>
			</div>
			<div class="carousel-item">
				<a href="pages/competitionPage.jsp"><img src="img/3.jpg" class="full-width"
					style="width: 100%;"></a>
			</div>
		</div>

		<!-- 左右切换按钮 -->
		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>
	<br />
	<br />

	<!-- News分隔栏 -->
	<div style="text-align: center">
		<span class="news">News</span>
		<hr style="width: 50%; height: 1px; background-color: #000;" />

	</div>

	<!-- News -->
	<div class="center">
		<div class="card">
			<img class="card-img-top" src="img/news1.jpg" alt="Card image"
				style="width: 100%">
			<div class="card-body">
				<p class="card-text">Tokyo 2020 Announces Sustainability Plan
					and Guiding Principle "Be better, together - for the planet and the
					people"</p>
				<a href="#" class="btn btn-primary">See More</a>
			</div>
		</div>
		&nbsp;&nbsp;&nbsp;

		<div class="card">
			<img class="card-img-top" src="img/news2.jpg" alt="Card image"
				style="width: 100%">
			<div class="card-body">
				<p class="card-text">Tokyo 2020 Announces Sustainability Plan
					and Guiding Principle "Be better, together - for the planet and the
					people"</p>
				<a href="#" class="btn btn-primary">See More</a>
			</div>
		</div>
		&nbsp&nbsp&nbsp

		<div class="card">
			<img class="card-img-top" src="img/news3.jpg" alt="Card image"
				style="width: 100%">
			<div class="card-body">
				<p class="card-text">Tokyo 2020 Announces Sustainability Plan
					and Guiding Principle "Be better, together - for the planet and the
					people"</p>
				<a href="#" class="btn btn-primary">See More</a>
			</div>
		</div>

	</div>

	<div style="height: 40px"></div>

	<!-- 版权声明 -->
	<div class="down text-center"
		style="background-color: #343A40; color: #fff; height: 130px">
		<div class="bg-dark">
			<div style="height: 10px"></div>
			<div>TOKYO 2020 PRE-GAMES TRAINING CAMPS ONLINE GUIDE</div>
			<div>
				<a href="#" target=_blank style="color: white">Website Map</a> | <a
					href="#" target=_blank style="color: white">Website Statement</a> |
				<a href="#" target=_blank style="color: white">Contect us</a> | <a
					href="#" target=_blank style="color: white">Help</a> | <a href="#"
					target=_blank style="color: white">Our Email</a>
			</div>
			<div style="height: 10px"></div>
			<div>
				Software school of Northeastern University<br /> <span
					style="font-size: 12px">©Software school of Northeastern
					University. All rights reserved.</span>
			</div>
		</div>
	</div>

</body>
</html>
