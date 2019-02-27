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
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<style>
.jumbotron {
	padding-top: 2rem;
}

.navbar-brand {
	font-size: 25px;
}

.flag {
	float: left;
}

.Dname {
	font-family: "Microsoft JhengHei";
	font-size: 50px;
	font-weight: 1000;
	font-style: italic;
}

.Brief {
	float: left;
}

.table {
	font-size: 15px;
}

.Project {
	float: left;
}
.team{
	width:300px;
}
</style>

<title>Insert title here</title>
</head>
<body>
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
	<!-- 代表团牌面 -->
	<div class="jumbotron jumbotron-fluid" style="height: 200px">
		<img class="flag" src="${requestScope.delegation.getDflag1()}" style="margin-left: 250px;width:180px">
		<p class="Brief" style="margin-left: 20px">
			<span class="Dname">
			<!-- Delegation delagation = (Delegation)request.getAttribute("country");
			out.print(delagation.getDname()); -->
			${requestScope.delegation.getDname()}
			</span><br/>
			<span>${requestScope.delegation.getDintro()}</span>
		</p>
	</div>

	<!-- Athletes -->
	<!-- Individual -->
	<div class="card" style="left: 250px; width: 1036px">
		<div class="card-header">
			<a class="card-link" data-toggle="collapse" href="#collapseOne">Individual
				Entries</a>
		</div>
		<div id="collapseOne" class="collapse show">
			<div class="card-body">
				<!-- Table Tennis -->
				<div class="card">
					<div class="card-body">
						<img class="Project" src="img/tabletennis.png"
							style="margin-left: 20px">
						<h1 style="float: left; margin-left: 20px; margin-bottom: 0rem">Table
							Tennis</h1>
						<HR align=left width=600 color=#987cb9 SIZE=1
							style="margin-top: 90px">
						<div class="card" style="width: 250px; float: left">
						<% int iid;
						//iid = Integer.parseInt()
						%>
							<a href="Delegationdetail_servlet?method=indi&iid=${requestScope.iplayerTable.getIid()}"> <img class="card-img-top"
								src="${requestScope.iplayerTable.getIimg()}"
								alt="Card image" style="width: 100%">
							</a>
							<div class="card-body">
								<h4 class="card-title">${requestScope.iplayerTable.getIname()}</h4>
							</div>
						</div>
					</div>
				</div>
				<!-- Badminton -->
				<div class="card">
					<div class="card-body">
						<img class="Project" src="img/badminton.png"
							style="margin-left: 20px">
						<h1 style="float: left; margin-left: 20px; margin-bottom: 0rem">Badminton</h1>
						<HR align=left width=600 color=#987cb9 SIZE=1
							style="margin-top: 90px">
							
						<%-- <c:foreach var="athlete" items="${requestScope.athleteList}">
							<div class="card" style="width: 200px; float: left">
								<a href="pages/iplayerPage.jsp?method=gotoAthlete&athleteName=${athlete.getName()}"> <img class="card-img-top"
									src="${athlete.get...()}"
									alt="Card image" style="width: 100%">
								</a>
								<div class="card-body">
									<h4 class="card-title">John Doe</h4>
									<p class="card-text">Some example text some example text.</p>
								</div>
							</div>
						</c:foreach> --%>
						<div class="card" style="width: 250px; float: left">
							<a href="Delegationdetail_servlet?method=indi&iid=${requestScope.iplayerBad.getIid()}"> <img class="card-img-top"
								src="${requestScope.iplayerBad.getIimg()}"
								alt="Card image" style="width:100%">
							</a>
							<div class="card-body">
								<h4 class="card-title">${requestScope.iplayerBad.getIname()}</h4>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Team -->
		<div class="card">
			<div class="card-header">
				<a class="collapsed card-link" data-toggle="collapse"
					href="#collapseTwo">Team Entries</a>
			</div>
		</div>
		<div id="collapseTwo" class="collapse" data-parent="#accordion">
			<div class="card-body">
				<!-- Soccer -->
				<div class="card">
					<div class="card-body">
						 <img class="Project"
							src="img/soccer.png" style="margin-left: 20px">
							<h1 style="float: left; margin-left: 20px; margin-bottom: 0rem">${requestScope.teamSoccer.getTname()}</h1>
						<HR align=left width=600 color=#987cb9 SIZE=1
							style="margin-top: 90px">
						<a href="Delegationdetail_servlet?method=team&teid=${requestScope.teamSoccer.getTeid()}"><img class="team" src="${requestScope.teamSoccer.getTimg1()}"></a>
					</div>
				</div>
				<!-- Basketball -->
				<div class="card">
					<div class="card-body">
						<img class="Project"
							src="img/basketball.png" style="margin-left: 20px">
							<h1 style="float: left; margin-left: 20px; margin-bottom: 0rem">${requestScope.teamBas.getTname()}</h1>
						<HR align=left width=600 color=#987cb9 SIZE=1
							style="margin-top: 90px">
						<a href="Delegationdetail_servlet?method=team&teid=${requestScope.teamBas.getTeid()}"><img class = "team" src="${requestScope.teamBas.getTimg1()}"></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- medals -->
	<div class="card"
		style="position: fixed; top: 100px; right: 10px; height: 212px; width: 207px">
		<table class="table" style="height: 210px; width: 200px">
			<thead>
				<tr>
					<th>Prize</th>
					<th>Medals</th>
					<th>rank</th>
				</tr>
			</thead>
			<tbody>
				<tr class="table-warning">
					<td>Golden</td>
					<td>5</td>
					<td>6</td>
				</tr>
				<tr class="table-active">
					<td>Silver</td>
					<td>10</td>
					<td>5</td>
				</tr>
				<tr class="table-danger">
					<td>Copper</td>
					<td>12</td>
					<td>4</td>
			</tbody>
		</table>
	</div>
	<br/><br/><br/>
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
					style="font-size: 12px">?Software school of Northeastern
					University. All rights reserved.</span>
			</div>
		</div>
	</div>
</body>
</html>