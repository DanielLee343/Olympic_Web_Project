<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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

	<!-- 竞赛导航 -->
	<div class="container-fluid">
		<div class="row">

			<div class="col">

				<div class="card" id="section1">
					<div class="card-body">
						<h1>${requestScope.team.getTname()}<h1>
						<img src="${requestScope.team.getTimg1()}" style="width: 500px;padding:20px; float: left">
						<table class="table table-hover" style="width: 600px;margin-left:100px; height: 300px; float: left">
							<thead>
								<tr>
									<th>Information</th>
								</tr>
							</thead>
							<tbody>
								<tr class="table-warning">
									<td>${requestScope.team.getTintro()}</td>
								</tr>
							</tbody>
						</table>
						<img style = "margin-left:100px"src="${requestScope.team.getTimg2()}"> <br> <br> <br>
						<h2>Best Result</h2>
						<table class="table" style="width: 60px; height: 30px">

							<thead>
								<tr class="table-info">
									<th>Gold Medal</th>
									<th>Silver Medal</th>
									<th>Bronze Medal</th>
								</tr>
							</thead>
							<tbody>
								<tr class="table-primary">
									<td>${requestScope.tmedal.getGold()}</td>
									<td>${requestScope.tmedal.getSilver()}</td>
									<td>${requestScope.tmedal.getBronze()}</td>
								</tr>
							</tbody>
						</table>
						<br>
						<h2>Team Member</h2>

						<br>
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#Goalkeeper">small forward</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#Defender">forward</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#Midfielder">middlefield</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#Forward">defender</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content">
							<div id="Goalkeeper" class="container tab-pane active">
								<br>
								<div id="accordion">
									<div class="card">
										<div class="card-header">
											<a class="card-link" data-toggle="collapse"
												href="#collapseOne"> ${requestScope.tplayer1.getTpname()} </a>
												<a class="card-link" href="Team_servlet?tid=${requestScope.tplayer1.getTid()}" style="float:right">View More</a>
										</div>
										<div id="collapseOne" class="collapse show"
											data-parent="#accordion">
											<div class="card-body">
												<img src="${requestScope.tplayer1.getTimg()}" style="width: 350px; float: left;">
												<p>${requestScope.tplayer1.getTintro()}</p>
											</div>
										</div>
									</div>
								</div>


							</div>
							<div id="Defender" class="container tab-pane fade">
								<br>
								<div id="accordion">
									<div class="card">
										<div class="card-header">
											<a class="card-link" data-toggle="collapse"
												href="#collapseThree"> ${requestScope.tplayer2.getTpname()}</a>
												<a class="card-link" href="Team_servlet?tid=${requestScope.tplayer2.getTid()}" style="float:right">View More</a>
										</div>
										<div id="collapseThree" class="collapse show"
											data-parent="#accordion">
											<div class="card-body">
												<img src="${requestScope.tplayer2.getTimg()}" style="width: 350px; float: left">
												<p>${requestScope.tplayer2.getTintro()}</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div id="Midfielder" class="container tab-pane fade">
								<br>
								<div id="accordion">
									<div class="card">
										<div class="card-header">
											<a class="card-link" data-toggle="collapse"
												href="#collapseFour"> ${requestScope.tplayer3.getTpname()} </a>
												<a class="card-link" href="Team_servlet?tid=${requestScope.tplayer3.getTid()}" style="float:right">View More</a>
										</div>
										<div id="collapseFour" class="collapse show"
											data-parent="#accordion">
											<div class="card-body">
												<img src="${requestScope.tplayer3.getTimg()}" style="width: 350px; float: left">
												<p>${requestScope.tplayer3.getTintro()}</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div id="Forward" class="container tab-pane fade">
								<br>
								<div id="accordion">
									<div class="card">
										<div class="card-header">
											<a class="card-link" data-toggle="collapse"
												href="#collapseFive"> ${requestScope.tplayer4.getTpname()} </a>
												<a class="card-link" href="Team_servlet?tid=${requestScope.tplayer4.getTid()}" style="float:right">View More</a>
										</div>
										<div id="collapseFive" class="collapse show"
											data-parent="#accordion">
											<div class="card-body">
												<img src="${requestScope.tplayer4.getTimg()}" style="width: 350px; float: left">
												<p>${requestScope.tplayer4.getTintro()}</p>
											</div>
										</div>
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

