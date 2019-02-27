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
<title>Log in</title>
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

<style type="text/css">
.navbar-brand {
	font-size: 25px;
}

.card {
	width: 700px;
	left: 25%;
}

img {
	width: 200px;
	top: 0px;
}
</style>

<script language="javascript" type="text/javascript">
	function checkuser() {
		if ((document.getElementById("id").value == "d")
				&& (document.getElementById("pwd").value == "d")) {
			window.location = "pages/admin.jsp";
			window.event.returnValue = false;
		} else {
			alert("Id or password is wrong!");
		}
	}
</script>
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
	 </nav>

	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<h1>Please log in!</h1>
		</div>
	</div>

	<div class="card">
		<div class="card-header">Administrator</div>
		<div class="card-body">
			<div style="text-align: center">
				<img src="img/admin.png">
			</div>
			<form method="post" action="Servlet?method=login" >
				<label for="id">id:</label> <input type="text" name="id"
					class="form-control" id="id" placeholder="Enter id"> <label
					for="pwd">Password:</label> <input type="password" name="pwd"
					class="form-control" id="pwd" placeholder="Enter password"><br />
				<input name="button" type="submit" class="btn btn-primary"
					value="Submit"/>
				<div id="fail">
					<%-- <%
						String s = (String) request.getAttribute("ValueA");
						out.println("<span>"+s+"</span>");
					%> --%>
					<span>${ValueA}</span>
					
				</div>
			</form>
		</div>
	</div>
	<br />

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