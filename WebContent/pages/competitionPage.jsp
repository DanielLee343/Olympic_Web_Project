<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<jsp:useBean id="medal1" class="bean.sportsMedal" scope="request" />
<jsp:useBean id="medal2" class="bean.sportsMedal" scope="request" />
<jsp:useBean id="medal3" class="bean.sportsMedal" scope="request" />
<jsp:useBean id="medal4" class="bean.sportsMedal" scope="request" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Competition Page</title>
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
</style>
</head>

<body data-spy="scroll" data-target="#myScrollspy" data-offset="1">

	<!-- 导航栏 -->
	<nav class="navbar navbar-expand-md bg-dark navbar-dark"> <a
		class="navbar-brand" href="pages/homePage.jsp">Home</a>

	<div class="collapse navbar-collapse" id="collapsibleNavbar">
		<ul class="navbar-nav">
			<li class="nav-item active"><a class="nav-link active"
				href="Medal_record">View competitions</a></li>
			<li class="nav-item"><a class="nav-link "
				href="pages/delegationPage.jsp">View Delegations</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Others</a></li>
		</ul>
	</div>
	<a class="navbar-brand" href="pages/login.jsp">Log in</a> </nav>

	<div class="card" style="background: #D0D0D0; height: 115px">
		<div class="card-body">
			<h2 class="card-title" style="color: black">All competitions</h2>
		</div>
	</div>
	<br />

	<!-- 竞赛导航 -->
	<div class="container-fluid">
		<div class="row">
			<nav class="col-sm-3 col-4" id="myScrollspy">
			<ul class="nav nav-pills flex-column">
				<li class="nav-item"><a class="nav-link" href="#section1"><img
						src="img/basketball.png" class="flag"> Basketball</a></li>
				<li class="nav-item"><a class="nav-link" href="#section2"><img
						src="img/soccer.png" class="flag"> Soccer</a></li>
				<li class="nav-item"><a class="nav-link" href="#section3"><img
						src="img/tabletennis.png" class="flag"> Table Tennis</a></li>
				<li class="nav-item"><a class="nav-link" href="#section4"><img
						src="img/badminton.png" class="flag"> Badminton</a></li>
			</ul>
			</nav>

			<div class="col-sm-9 col-8">

				<div class="card" id="section1">
					<div class="card-body">
						<h1>Basketball</h1>
						<img src="img/hadeng.jpg" style="float: left">
						<table class="table table-hover" style="width: 400px; float: left">
							<thead>
								<tr>
									<th>Medal</th>
									<th>Delegation</th>
								</tr>
							</thead>
							<tbody>
								<tr class="table-warning">
									<td>Gold Medal</td>
									<td><jsp:getProperty name="medal2" property="golddname" /></td>
								</tr>
								<tr class="table-active">
									<td>Silver Medal</td>
									<td><jsp:getProperty name="medal2" property="silverdname" /></td>
								</tr>
								<tr class="table-danger">
									<td>Bronze Medal</td>
									<td><jsp:getProperty name="medal2" property="bronzedname" /></td>
								</tr>
							</tbody>
						</table>
						<button id="button1" type="button" class="btn btn-primary"
							data-toggle="modal" style="margin-left: 200px"
							data-target="#myModal" onclick="transmit(2)">See
							complete ranking</button>

						<div style="float: right">
							<br />
							<p>Since the mid-1980s, with the participation of the world's
								basketball professional teams in the Olympic Games, the world
								basketball movement has entered a new and innovative development
								and reached a new stage of skill.</p>
							<a href="Game_record?method=guest&sport=1" class="card-link">View
								more</a>
						</div>
					</div>
				</div>
				<div class="card" id="section2">
					<div class="card-body">
						<h1>Soccer</h1>
						<img src="img/cluo.jpg" style="float: left">
						<table class="table table-hover" style="width: 400px; float: left">
							<thead>
								<tr>
									<th>Medal</th>
									<th>Delegation</th>
								</tr>
							</thead>
							<tbody>
								<tr class="table-warning">
									<td>Gold Medal</td>
									<td><jsp:getProperty name="medal1" property="golddname" /></td>
								</tr>
								<tr class="table-active">
									<td>Silver Medal</td>
									<td><jsp:getProperty name="medal1" property="silverdname" /></td>
								</tr>
								<tr class="table-danger">
									<td>Bronze Medal</td>
									<td><jsp:getProperty name="medal1" property="bronzedname" /></td>
								</tr>
							</tbody>
						</table>
						<button id="button2" type="button" class="btn btn-primary"
							data-toggle="modal" style="margin-left: 200px"
							data-target="#myModal" onclick="transmit(1)">See
							complete ranking</button>

						<div style="float: right">
							<br />
							<p>Football, with its reputation as the "world's first
								sport," is the most influential individual sport in the world's
								sports world. The standard football game consists of two teams
								of 10 players and 1 goal-keeper, 11 in total, who play against a
								rectangular grass court.</p>
							<a href="Game_record?method=guest&sport=0" class="card-link">View
								more</a>
						</div>
					</div>
				</div>



				<div class="card" id="section3">
					<div class="card-body">
						<h1>Table Tennis</h1>
						<img src="img/xuxin.jpg" style="float: left">
						<table class="table table-hover" style="width: 400px; float: left">
							<thead>
								<tr>
									<th>Medal</th>
									<th>players</th>
									<th>Delegation</th>
								</tr>
							</thead>
							<tbody>
								<tr class="table-warning">
									<td>Gold Medal</td>
									<td><jsp:getProperty name="medal3" property="goldpart" /></td>
									<td><jsp:getProperty name="medal3" property="golddname" /></td>
								</tr>
								<tr class="table-active">
									<td>Silver Medal</td>
									<td><jsp:getProperty name="medal3" property="silverpart" /></td>
									<td><jsp:getProperty name="medal3" property="silverdname" /></td>
								</tr>
								<tr class="table-danger">
									<td>Bronze Medal</td>
									<td><jsp:getProperty name="medal3" property="bronzepart" /></td>
									<td><jsp:getProperty name="medal3" property="bronzedname" /></td>
								</tr>
							</tbody>
						</table>
						<button id="button3" type="button" class="btn btn-primary"
							data-toggle="modal" style="margin-left: 200px"
							data-target="#myModal" onclick="transmit(3)">See
							complete ranking</button>
						<div style="float: right">
							<br />
							<p>Table tennis originated in the United Kingdom. "Table
								tennis" originated in 1900. It was named after the sound of
								"Ping Pong" when it was blown. In mainland China, "table tennis"
								is used as its official name, Hong Kong and Macau etc. The same
								is true in the area.</p>
							<a href="Game_record?method=guest&sport=2" class="card-link">View
								more</a>
						</div>
					</div>
				</div>


				<div class="card" id="section4">
					<div class="card-body">
						<h1>Badminton</h1>
						<img src="img/lizongwei.jpg" style="float: left">
						<table class="table table-hover" style="width: 400px; float: left">
							<thead>
								<tr>
									<th>Medal</th>
									<th>players</th>
									<th>Delegation</th>
								</tr>
							</thead>
							<tbody>
								<tr class="table-warning">
									<td>Gold Medal</td>
									<td><jsp:getProperty name="medal4" property="goldpart" /></td>
									<td><jsp:getProperty name="medal4" property="golddname" /></td>
								</tr>
								<tr class="table-active">
									<td>Silver Medal</td>
									<td><jsp:getProperty name="medal4" property="silverpart" /></td>
									<td><jsp:getProperty name="medal4" property="silverdname" /></td>
								</tr>
								<tr class="table-danger">
									<td>Bronze Medal</td>
									<td><jsp:getProperty name="medal4" property="bronzepart" /></td>
									<td><jsp:getProperty name="medal4" property="bronzedname" /></td>
								</tr>
							</tbody>
						</table>
						<button id="button4" type="button" class="btn btn-primary"
							data-toggle="modal" style="margin-left: 200px"
							data-target="#myModal" onclick="transmit(4)">See
							complete ranking</button>

						<div style="float: right">
							<br />
							<p>Badminton is an indoor exercise that involves the use of a
								long-handed, net-like racket to hit a flat, hemispherical cork
								with a feather loop across the net.</p>
							<a href="Game_record?method=guest&sport=3" class="card-link">View
								more</a>
						</div>
					</div>
				</div>


			</div>
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
					style="font-size: 12px">©Software school of Northeastern
					University. All rights reserved.</span>
			</div>
		</div>
	</div>
	<!-- modal -->
	<div class="modal fade" id="myModal">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">

				<!-- modal head -->
				<div class="modal-header">
					<h4 class="modal-title">Complete Ranking</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- modal body -->
				<div id="recive" class="modal-body"></div>

				<!-- modal bottom -->
				<div class="modal-footer">

					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">close</button>
				</div>

			</div>
		</div>
	</div>
	<div style="display: none;">
		<div id="medal1com">
			<table class="table">
				<thead>
					<tr>
						<th>Participant</th>
						<th>Country</th>
						<th>Ranking</th>
					</tr>
				</thead>
				<tbody>
					<tr class="table-warning">
						<td><jsp:getProperty name="medal1" property="goldpart"/></td>
						<td><jsp:getProperty name="medal1" property="goldpart"/></td>
						<td>1st</td>
					</tr>
					<tr class="table-active">
						<td><jsp:getProperty name="medal1" property="silverpart"/></td>
						<td><jsp:getProperty name="medal1" property="silverpart"/></td>
						<td>2nd</td>
					</tr>
					<tr class="table-danger">
						<td><jsp:getProperty name="medal1" property="bronzepart"/></td>
						<td><jsp:getProperty name="medal1" property="bronzedname"/></td>
						<td>3rd</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal1" property="fourthpart"/></td>
						<td><jsp:getProperty name="medal1" property="fourthdname"/></td>
						<td>4th</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal1" property="loserapart"/></td>
						<td><jsp:getProperty name="medal1" property="loseradname"/></td>
						<td>Lost in First Round</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal1" property="loserbpart"/></td>
						<td><jsp:getProperty name="medal1" property="loserbdname"/></td>
						<td>Lost in First Round</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal1" property="losercpart"/></td>
						<td><jsp:getProperty name="medal1" property="losercdname"/></td>
						<td>Lost in First Round</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal1" property="loserdpart"/></td>
						<td><jsp:getProperty name="medal1" property="loserddname"/></td>
						<td>Lost in First Round</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="medal2com"><table class="table">
				<thead>
					<tr>
						<th>Participant</th>
						<th>Country</th>
						<th>Ranking</th>
					</tr>
				</thead>
				<tbody>
					<tr class="table-warning">
						<td><jsp:getProperty name="medal2" property="goldpart"/></td>
						<td><jsp:getProperty name="medal2" property="goldpart"/></td>
						<td>1st</td>
					</tr>
					<tr class="table-active">
						<td><jsp:getProperty name="medal2" property="silverpart"/></td>
						<td><jsp:getProperty name="medal2" property="silverpart"/></td>
						<td>2nd</td>
					</tr>
					<tr class="table-danger">
						<td><jsp:getProperty name="medal2" property="bronzepart"/></td>
						<td><jsp:getProperty name="medal2" property="bronzedname"/></td>
						<td>3rd</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal2" property="fourthpart"/></td>
						<td><jsp:getProperty name="medal2" property="fourthdname"/></td>
						<td>4th</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal2" property="loserapart"/></td>
						<td><jsp:getProperty name="medal2" property="loseradname"/></td>
						<td>Lost in First Round</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal2" property="loserbpart"/></td>
						<td><jsp:getProperty name="medal2" property="loserbdname"/></td>
						<td>Lost in First Round</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal2" property="losercpart"/></td>
						<td><jsp:getProperty name="medal2" property="losercdname"/></td>
						<td>Lost in First Round</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal2" property="loserdpart"/></td>
						<td><jsp:getProperty name="medal2" property="loserddname"/></td>
						<td>Lost in First Round</td>
					</tr>
				</tbody>
			</table></div>
		<div id="medal3com"><table class="table">
				<thead>
					<tr>
						<th>Participant</th>
						<th>Country</th>
						<th>Ranking</th>
					</tr>
				</thead>
				<tbody>
					<tr class="table-warning">
						<td><jsp:getProperty name="medal3" property="goldpart"/></td>
						<td><jsp:getProperty name="medal3" property="goldpart"/></td>
						<td>1st</td>
					</tr>
					<tr class="table-active">
						<td><jsp:getProperty name="medal3" property="silverpart"/></td>
						<td><jsp:getProperty name="medal3" property="silverpart"/></td>
						<td>2nd</td>
					</tr>
					<tr class="table-danger">
						<td><jsp:getProperty name="medal3" property="bronzepart"/></td>
						<td><jsp:getProperty name="medal3" property="bronzedname"/></td>
						<td>3rd</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal3" property="fourthpart"/></td>
						<td><jsp:getProperty name="medal3" property="fourthdname"/></td>
						<td>4th</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal3" property="loserapart"/></td>
						<td><jsp:getProperty name="medal3" property="loseradname"/></td>
						<td>Lost in First Round</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal3" property="loserbpart"/></td>
						<td><jsp:getProperty name="medal3" property="loserbdname"/></td>
						<td>Lost in First Round</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal3" property="losercpart"/></td>
						<td><jsp:getProperty name="medal3" property="losercdname"/></td>
						<td>Lost in First Round</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal3" property="loserdpart"/></td>
						<td><jsp:getProperty name="medal3" property="loserddname"/></td>
						<td>Lost in First Round</td>
					</tr>
				</tbody>
			</table></div>
		<div id="medal4com"><table class="table">
				<thead>
					<tr>
						<th>Participant</th>
						<th>Country</th>
						<th>Ranking</th>
					</tr>
				</thead>
				<tbody>
					<tr class="table-warning">
						<td><jsp:getProperty name="medal4" property="goldpart"/></td>
						<td><jsp:getProperty name="medal4" property="goldpart"/></td>
						<td>1st</td>
					</tr>
					<tr class="table-active">
						<td><jsp:getProperty name="medal4" property="silverpart"/></td>
						<td><jsp:getProperty name="medal4" property="silverpart"/></td>
						<td>2nd</td>
					</tr>
					<tr class="table-danger">
						<td><jsp:getProperty name="medal4" property="bronzepart"/></td>
						<td><jsp:getProperty name="medal4" property="bronzedname"/></td>
						<td>3rd</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal4" property="fourthpart"/></td>
						<td><jsp:getProperty name="medal4" property="fourthdname"/></td>
						<td>4th</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal4" property="loserapart"/></td>
						<td><jsp:getProperty name="medal4" property="loseradname"/></td>
						<td>Lost in First Round</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal4" property="loserbpart"/></td>
						<td><jsp:getProperty name="medal4" property="loserbdname"/></td>
						<td>Lost in First Round</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal4" property="losercpart"/></td>
						<td><jsp:getProperty name="medal4" property="losercdname"/></td>
						<td>Lost in First Round</td>
					</tr>
					<tr class="table-light">
						<td><jsp:getProperty name="medal4" property="loserdpart"/></td>
						<td><jsp:getProperty name="medal4" property="loserddname"/></td>
						<td>Lost in First Round</td>
					</tr>
				</tbody>
			</table></div>
	</div>

</body>
<script type="text/javascript">
	$("#myModal").modal("hide");
	function transmit(id) {
		$("#myModal").modal("show");
		var html = "";
		html = document.getElementById('medal' + id + 'com').innerHTML;

		document.getElementById('recive').innerHTML = html;
	}
</script>
</html>
