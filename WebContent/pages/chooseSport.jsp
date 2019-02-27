<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Choose sport</title>
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<style>
a:link {text-decoration:none;}
a:hover {text-decoration:none;}

h1 {
	font-family: "微软雅黑";
}

.navbar-brand {
	font-size: 25px;
}

h4 {
	color: white;
	font-family: "微软雅黑";
}
span{
	font-size:22px;
}
</style>
</head>

<body>
	<!-- 导航栏 -->
	<nav class="navbar navbar-expand-md bg-dark navbar-dark"> <a
		class="navbar-brand" href="pages/homePage.jsp">Home</a>

		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="Medal_record">View
						competitions</a></li>
				<li class="nav-item"><a class="nav-link"
					href="pages/delegationPage.jsp">View Delegations</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Others</a></li>
			</ul>
		</div>
	</nav>

	<!-- 标题 -->
	<div class="jumbotron text">
		<h2>Tokyo 2020</h2>
		<img src="img/logo.png">
	</div>

	<!-- 选择一个要进行的运动 -->
	<div class="card bg-light" style="width:650px;left:28%">
		<div class="card-header" style="text-align: center;">
			<h3>Please choose a game to start!</h3>
		</div>
	    
	    <div class="card-body">
		    <div style="position:absolute;left:180px">
		    	<a href="Game_record?method=admin&sport=3"> <img src="img/badminton.png" style="width:90px" ><br/><span>Badminton</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
		    </div>
		    <div style="position:absolute;left:380px">
		    	<a href="Game_record?method=admin&sport=1"> <img src="img/basketball.png" style="height: 100px"><br/><span>&nbsp;Basketball</span></a>
		    </div>
			<div style="position:absolute;left:180px;top:260px" >
				<a href="Game_record?method=admin&sport=2"> <img src="img/tabletennis.png" style="height: 100px"><br/><span>Table Tennis</span></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<div style="position:absolute;left:380px;top:260px">
				<a href="Game_record?method=admin&sport=0"> <img src="img/soccer.png" style="height: 100px"><br/><span>&nbsp;&nbsp;&nbsp;Soccer</span></a>
			</div>
			 <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
			
	    </div>
	</div>
	
	
		
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
					style="font-size: 12px">?Software school of Northeastern
					University. All rights reserved.</span>
			</div>
		</div>
	</div>
		
			
</body>
</html>