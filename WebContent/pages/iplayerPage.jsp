
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Competition Page</title>
<base href="<%=basePath%>">
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

body {
	position: relative;
}

ul.nav-pills {
	top: 200px;
	position: fixed;
}

div.col-8 div {
	/* height: 500px; */
	
}

.flag {
	width: 35px;
}

.card {
	background: #F2F2F2;
}

img {
	width: 600px;
}

col {
	width: 600px;
}
</style>
</head>

<body data-spy="scroll" data-target="#myScrollspy" data-offset="1">

	<!-- 导航栏 -->
	<nav class="navbar navbar-expand-md bg-dark navbar-dark"> <a
		class="navbar-brand" href="pages/homePage.jsp">Home</a>

	<div class="collapse navbar-collapse" id="collapsibleNavbar">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link"
				href="Medal_record">View competitions</a></li>
			<li class="nav-item"><a class="nav-link"
				href="pages/delegationPage.jsp">View Delegations</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Others</a></li>
		</ul>
	</div>
	<a class="navbar-brand" href="pages/login.jsp">Log in</a> </nav>

	<div class="card" style="background: #D0D0D0; height: 110px">
		<div class="jumbotron text">
			<h2>Tokyo 2020</h2>
			<img src="img/logo.png" style="width: 182px; height: 124px">
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<div class="card">
		<div class="card-body">
			<div class="container">
				<h1>Details</h1>
			</div>
		</div>
	</div>
	<div class="card">
		<div class="card-body">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="container">
							<h2>${requestScope.iplayer.getIname()}</h2>
							<br />
							<div class="card" style="width: 400px">
								<img class="card-img-top" src="${requestScope.iplayer.getIimg()}" alt="Card image"
									style="width: 100%">
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="container">
							<table class="table table-bordered">
								<tbody>
									<tr class="table-primary">
										<th>Full name</th>
										<td>${requestScope.iplayer.getIname()}</td>
									</tr>
									<tr class="table-success">
										<th>Date of birth</th>
										<td>${requestScope.iplayer.getAge()}</td>
									</tr>
									<tr class="table-danger">
										<th>Delegation</th>
										<td>${requestScope.delegation.getDname()}</td>
									</tr>
								</tbody>
							</table>
							<div class="card bg-info text-white">
								<div class="card-body">
									<div class="container">
										<h6>${requestScope.iplayer.getRecord()}</h6>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<br>

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

