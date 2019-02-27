
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
%>
<jsp:useBean id="game1" class="bean.Tgame" scope="request"/>
<jsp:useBean id="game2" class="bean.Tgame" scope="request"/>
<jsp:useBean id="game3" class="bean.Tgame" scope="request"/>
<jsp:useBean id="game4" class="bean.Tgame" scope="request"/>
<jsp:useBean id="game5" class="bean.Tgame" scope="request"/>
<jsp:useBean id="game6" class="bean.Tgame" scope="request"/>
<jsp:useBean id="game7" class="bean.Tgame" scope="request"/>
<jsp:useBean id="game8" class="bean.Tgame" scope="request"/>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>


<style>
.card-header {
	height: 90px;
	background-color: white;
}

.icon {
	width: 70px;
}

.part {
	font-family: "Microsoft JhengHei";
	font-size: 25px;
	font-weight: 750;
	color: black;
}
</style>
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
		<h1
			style="font-family: Comic Sans MS; font-size: 60px; margin-left: 250px"><%=request.getAttribute("sport") %>
			Matches</h1>
	</div>

	<!-- First Round -->
	<div id="FirstRound" style="margin-left: 250px; width: 1036px">
		<div class="card" style="background-color: rgba(0, 128, 255, 0.32);">
			<span class="part" style="font-style: italic; margin-left: 20px">First
				Round</span>
		</div>
		<div class="card">
			<a class="card-header" style="text-decoration:none" data-toggle="collapse" href="#R1-1">
				<div class="d-flex">
					<div class="flex-fill">
						<img class="icon" src="<jsp:getProperty name="game1" property="flagA"/>"> <span
							class="part" id = "game1sideA"><jsp:getProperty name="game1" property="partA"/></span></div>
					<div class="flex-fill">
						<img src="img/VS.png"
							style="height: 60px; padding-left: 20px; float: left">
					</div>
					<div class="flex-fill">
						<span class="part" id = "game1sideB"><jsp:getProperty name="game1" property="partB"/></span> <img class="icon"
							style="transform: rotateY(180deg)" src="<jsp:getProperty name="game1" property="flagB"/>">
					</div>
					<div class="flex-fill" id="gameButton1">
					
					</div>
				</div>
			</a>
			<div id="R1-1" class="collapse show" data-parent="#FirstRound">
				<div class="card bg-light text-dark">
					<div class="card-body">
						<table class="table">
							<tbody>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">State</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game1" property="state"/></h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Result</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game1" property="scoreA"/>:<jsp:getProperty name="game1" property="scoreB"/>(<jsp:getProperty name="game1" property="winner"/>)</h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Time</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game1" property="time"/></h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Location</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game1" property="location"/></h3></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

		<div class="card">
			<a class="card-header" style="text-decoration:none" data-toggle="collapse" href="#R1-2">
				<div class="d-flex">
					<div class="flex-fill">
						<img class="icon" src="<jsp:getProperty name="game2" property="flagA"/>"> <span
							class="part" id = "game2sideA"><jsp:getProperty name="game2" property="partA"/></span></div>
					<div class="flex-fill">
						<img src="img/VS.png"
							style="height: 60px; padding-left: 20px; float: left">
					</div>
					<div class="flex-fill">
						<span class="part" id = "game2sideB"><jsp:getProperty name="game2" property="partB"/></span> <img class="icon"
							style="transform: rotateY(180deg)" src="<jsp:getProperty name="game2" property="flagB"/>">
					</div>
					<div class="flex-fill" id="gameButton2">
					
					</div>
				</div>
			</a>
			<div id="R1-2" class="collapse" data-parent="#FirstRound">
				<div class="card bg-light text-dark">
					<div class="card-body">
						<table class="table">
							<tbody>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">State</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game2" property="state"/></h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Result</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game2" property="scoreA"/>:<jsp:getProperty name="game2" property="scoreB"/>(<jsp:getProperty name="game2" property="winner"/>)</h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Time</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game2" property="time"/></h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Location</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game2" property="location"/></h3></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="card">
			<a class="card-header" style="text-decoration:none" data-toggle="collapse" href="#R1-3">
				<div class="d-flex">
					<div class="flex-fill">
						<img class="icon" src="<jsp:getProperty name="game3" property="flagA"/>"> <span
							class="part" id = "game3sideA"><jsp:getProperty name="game3" property="partA"/></span></div>
					<div class="flex-fill">
						<img src="img/VS.png"
							style="height: 60px; padding-left: 20px; float: left">
					</div>
					<div class="flex-fill">
						<span class="part" id = "game3sideB"><jsp:getProperty name="game3" property="partB"/></span> <img class="icon"
							style="transform: rotateY(180deg)" src="<jsp:getProperty name="game3" property="flagB"/>">
					</div>
					<div class="flex-fill" id="gameButton3">
					
					</div>
				</div>
			</a>
			<div id="R1-3" class="collapse" data-parent="#FirstRound">
				<div class="card bg-light text-dark">
					<div class="card-body">
						<table class="table">
							<tbody>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">State</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game3" property="state"/></h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Result</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game3" property="scoreA"/>:<jsp:getProperty name="game3" property="scoreB"/>(<jsp:getProperty name="game3" property="winner"/>)</h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Time</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game3" property="time"/></h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Location</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game3" property="location"/></h3></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="card">
				<a class="card-header" style="text-decoration:none" data-toggle="collapse" href="#R1-4">
					<div class="d-flex">
					<div class="flex-fill">
						<img class="icon" src="<jsp:getProperty name="game4" property="flagA"/>"> <span
							class="part" id = "game4sideA"><jsp:getProperty name="game4" property="partA"/></span></div>
					<div class="flex-fill">
						<img src="img/VS.png"
							style="height: 60px; padding-left: 20px; float: left">
					</div>
					<div class="flex-fill">
						<span class="part" id = "game4sideB"><jsp:getProperty name="game4" property="partB"/></span> <img class="icon"
							style="transform: rotateY(180deg)" src="<jsp:getProperty name="game4" property="flagB"/>">
					</div>
					<div class="flex-fill" id="gameButton4">
					
					</div>
				</div>
				</a>
				<div id="R1-4" class="collapse" data-parent="#FirstRound">
					<div class="card bg-light text-dark">
					<div class="card-body">
						<table class="table">
							<tbody>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">State</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game4" property="state"/></h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Result</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game4" property="scoreA"/>:<jsp:getProperty name="game4" property="scoreB"/>(<jsp:getProperty name="game4" property="winner"/>)</h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Time</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game4" property="time"/></h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Location</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game4" property="location"/></h3></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- Second Round -->
	<div id="Second Round"
		style="margin-left: 250px; margin-top: 50px; width: 1036px">
		<div class="card" style="background-color:rgba(0, 128, 255, 0.32)">
			<span class="part" style="font-style: italic; margin-left: 20px">Second
				Round</span>
		</div>
		<div class="card">
			<a class="card-header" style="text-decoration:none" data-toggle="collapse" href="#R2-1">
				<div class="d-flex">
					<div class="flex-fill">
						<img class="icon" src="<jsp:getProperty name="game5" property="flagA"/>"> <span
							class="part" id = "game5sideA"><jsp:getProperty name="game5" property="partA"/></span></div>
					<div class="flex-fill">
						<img src="img/VS.png"
							style="height: 60px; padding-left: 20px; float: left">
					</div>
					<div class="flex-fill">
						<span class="part" id = "game5sideB"><jsp:getProperty name="game5" property="partB"/></span> <img class="icon"
							style="transform: rotateY(180deg)" src="<jsp:getProperty name="game5" property="flagB"/>">
					</div>
					<div class="flex-fill" id="gameButton5">
					
					</div>
				</div>
			</a>
			<div id="R2-1" class="collapse" data-parent="#Second Round">
				<div class="card bg-light text-dark">
					<div class="card-body">
						<table class="table">
							<tbody>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">State</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game5" property="state"/></h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Result</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game5" property="scoreA"/>:<jsp:getProperty name="game5" property="scoreB"/>(<jsp:getProperty name="game5" property="winner"/>)</h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Time</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game5" property="time"/></h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Location</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game5" property="location"/></h3></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="card">
			<a class="card-header" style="text-decoration:none" data-toggle="collapse" href="#R2-2">
				<div class="d-flex">
					<div class="flex-fill">
						<img class="icon" src="<jsp:getProperty name="game6" property="flagA"/>"> <span
							class="part" id = "game6sideA"><jsp:getProperty name="game6" property="partA"/></span></div>
					<div class="flex-fill">
						<img src="img/VS.png"
							style="height: 60px; padding-left: 20px; float: left">
					</div>
					<div class="flex-fill">
						<span class="part" id = "game6sideB"><jsp:getProperty name="game6" property="partB"/></span> <img class="icon"
							style="transform: rotateY(180deg)" src="<jsp:getProperty name="game6" property="flagB"/>">
					</div>
					<div class="flex-fill" id="gameButton6">
					
					</div>
				</div>
			</a>
			<div id="R2-2" class="collapse" data-parent="#Second Round">
				<div class="card bg-light text-dark">
					<div class="card-body">
						<table class="table">
							<tbody>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">State</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game6" property="state"/></h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Result</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game6" property="scoreA"/>:<jsp:getProperty name="game6" property="scoreB"/>(<jsp:getProperty name="game6" property="winner"/>)</h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Time</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game6" property="time"/></h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Location</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game6" property="location"/></h3></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Final Round -->
	<div id="Final Round"
		style="margin-left: 250px; margin-top: 50px; width: 1036px">
		<div class="card" style="background-color:#ffbb0794;">
			<span class="part" style="font-style: italic; margin-left: 20px">Final
				Round</span>
		</div>
		<div class="card">
			<a class="card-header" style="text-decoration:none" data-toggle="collapse" href="#R3-1">
				<div class="d-flex">
					<div class="flex-fill">
						<img class="icon" src="<jsp:getProperty name="game7" property="flagA"/>"> <span
							class="part" id = "game7sideA"><jsp:getProperty name="game7" property="partA"/></span></div>
					<div class="flex-fill">
						<img src="img/VS.png"
							style="height: 60px; padding-left: 20px; float: left">
					</div>
					<div class="flex-fill">
						<span class="part" id = "game7sideB"><jsp:getProperty name="game7" property="partB"/></span> <img class="icon"
							style="transform: rotateY(180deg)" src="<jsp:getProperty name="game7" property="flagB"/>">
					</div>
					<div class="flex-fill" id="gameButton7">
					
					</div>
					<div class="flex-fill">
						<img style="padding-top:10px;width:50px" src="img/bronze-medal.png">
					</div>
				</div>
			</a>
			<div id="R3-1" class="collapse" data-parent="#Final Round">
				<div class="card bg-light text-dark">
					<div class="card-body">
						<table class="table">
							<tbody>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">State</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game7" property="state"/></h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Result</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game7" property="scoreA"/>:<jsp:getProperty name="game7" property="scoreB"/>(<jsp:getProperty name="game7" property="winner"/>)</h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Time</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game7" property="time"/></h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Location</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game7" property="location"/></h3></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="card">
			<a class="card-header" style="text-decoration:none" data-toggle="collapse" href="#R3-2">
				<div class="d-flex">
					<div class="flex-fill">
						<img class="icon" src="<jsp:getProperty name="game8" property="flagA"/>"> <span
							class="part" id = "game8sideA"><jsp:getProperty name="game8" property="partA"/></span></div>
					<div class="flex-fill">
						<img src="img/VS.png"
							style="height: 60px; padding-left: 20px; float: left">
					</div>
					<div class="flex-fill">
						<span class="part" id = "game8sideB"><jsp:getProperty name="game8" property="partB"/></span> <img class="icon"
							style="transform: rotateY(180deg)" src="<jsp:getProperty name="game8" property="flagB"/>">
					</div>
					<div class="flex-fill" id="gameButton8">
					
					</div>
					<div class="flex-fill">
						<img style="padding-top:10px;width:50px" src="img/gold-medal.png">
						<img style="padding-top:10px;width:50px" src="img/silver-medal.png">
					</div>
				</div>
			</a>
			<div id="R3-2" class="collapse" data-parent="#Final Round">
				<div class="card bg-light text-dark">
					<div class="card-body">
						<table class="table">
							<tbody>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">State</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game8" property="state"/></h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Result</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game8" property="scoreA"/>:<jsp:getProperty name="game8" property="scoreB"/>(<jsp:getProperty name="game8" property="winner"/>)</h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Time</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game8" property="time"/></h3></td>
								</tr>
								<tr>
									<td><h3 style="font-style: italic; font-weight: 500">Location</h3></td>
									<td><h3 style="font-weight: 250"><jsp:getProperty name="game8" property="location"/></h3></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 版权声明 -->
	<div class="down text-center"
		style="margin-top: 30px; background-color: #343A40; color: #fff; height: 130px">
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
		<!-- 模态框 -->
	<div class="modal fade" id="Startgame">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">

				<!-- 模态框头部 -->
				<div class="modal-header">
					<h4 class="modal-title">Enter Game Result </h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- 模态框主体 -->
				<div class="modal-body">
					<form action = "Update_game">
						<div class="custom-control-inline">
							<label>Participant A:</label>
							<input type="text" class="input-group-sm" style="margin-left: 20px" name="sideA" id="sideA" value=""/>
							<label style="margin-left: 20px">Score:</label>
							<input type="text" class="input-group-sm" style="margin-left: 20px" name="scoreA" id="scoreA"/>
						</div>
						<div class="custom-control-inline">
							<label>Participant B:</label>
							<input type="text" class="input-group-sm" style="margin-left: 20px" name="sideB" id="sideB" value=""/>
							<label style="margin-left: 20px">Score:</label>
							<input type="text" class="input-group-sm" style="margin-left: 20px" name="scoreB" id="scoreB"/>
						</div>
						<input type="hidden" name="id" id="id" value="" />
						<input type="hidden" name="sport" id="sport" value="<%=request.getAttribute("sport") %>" />
						<button type="submit" class="btn btn-primary" >Submit</button>
					</form>
				</div>

				<!-- 模态框底部 -->
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">close</button>
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">

	var gameST = new Array(8);
	gameST[0] = '<%=game1.getState()%>';
	gameST[1] = '<%=game2.getState()%>';
	gameST[2] = '<%=game3.getState()%>';
	gameST[3] = '<%=game4.getState()%>';
	gameST[4] = '<%=game5.getState()%>';
	gameST[5] = '<%=game6.getState()%>';
	gameST[6] = '<%=game7.getState()%>';
	gameST[7] = '<%=game8.getState()%>';

	for(var i = 0 ;i < 8;i++){
		var n = i+1;
		var html = '';
		
		if (gameST[i] == 'finished') {
			html += '<button type="button" class="btn btn-primary" style="float: left; margin-left: 60px; margin-top: 15px; color: #f8f9fa; background-color: #6c757d; border-color: #6c757d;" disabled>finished</button>';
		} else {
			html += '<button type="button" class="btn btn-primary" style="float: left; margin-left: 60px; margin-top: 15px" data-toggle="modal" data-target="#Startgame" onclick="transmit('+n+')">Start now</button>';
		}
		
		document.getElementById('gameButton'+n).innerHTML = html;
	}
	
</script>

<script type="text/javascript">
    $("#Startgame").modal("hide");
    function transmit(id){
        $("#Startgame").modal("show");
        
       
        $('#id').val(id);
        
        var sideA = document.getElementById('game'+id+'sideA').innerHTML;
        var sideB = document.getElementById('game'+id+'sideB').innerHTML;
        
        $('#sideA').val(sideA);
        $('#sideB').val(sideB);
    }
    
</script>

</html>