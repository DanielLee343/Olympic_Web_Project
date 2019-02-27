<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
 
    <title>Delegations</title>
    <!-- 统一的头 -->
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
	
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
  	<script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script> -->
  	
  	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
  	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
  	<script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	
	<style>
	h1{
		font-family:"微软雅黑";
	}
	.navbar-brand{
		font-size:25px;
	}
	.news{
		font-family:Helvetica Neue;
		font-size:22px;
	}
	.jumbotron{
		margin-height:0;
		margin-bottom:0;
		height:280px;
	}
	.center{
		text-align:center;
		left: 50%;
		margin: 0 auto;
	}
	.center >div{
		width:300px;
		display: inline-block;
	}
	.down{
		background-color:#343A40;
		color:#fff;
		height:130px;
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
        			<a class="nav-link active" href="pages/delegationPage.jsp">View Delegations</a>
      			</li>
     			<li class="nav-item">
       		 		<a class="nav-link" href="#">Others</a>
     		 	</li>    
    		</ul>
  		</div>
  		<a class="navbar-brand" href="pages/login.jsp">Log in</a> 
	</nav>
	
	<!-- 标题 -->
    <div class="jumbotron text">
    <h2>Tokyo 2020</h2>
  		<img src="img/logo.png" >				
	</div>
	
    <!-- 国家 排列与信息 -->
    <div class="container">
  <h3>Delegations in the Game</h3>
  <div id="accordion">
    <div class="card">
      <div class="card-header">
      
        <a class="card-link navbar-brand" data-toggle="collapse" href="#collapseOne" >
         <pre><img src="img/China3D.png" width="160" height="115" />    China                                <button type="button" class="btn btn-outline-dark" onclick = "window.location.href = 'Delegation_servlet?country=China'">learn for more <span class="badge badge-light">➤</span></button></pre>
        </a>
      </div>
      <div id="collapseOne" class="collapse" data-parent="#accordion">
        <div class="card-body">
         <a class="navbar-brand">History of Olympic Games in China:</a><br>
				In 1932, the government of the Republic of China formally sent members to the tenth Olympic Games held in Losangeles. Liu Changchun became the first Chinese athlete to take part in the Olympic Games.<br>
				In 1979, the International Olympic Committee restored the legal seat of China, and decided that the name of the People's Republic of China Olympic Committee was "China Olympic Committee", and the Olympic Committee of Taipei, Taiwan, China, was named "Taipei Olympic Committee of China Taipei". Since then, Chinese people across the Straits have had the chance to participate in the Olympic Games.<br>
				At 22:10 on July 13th Beijing time in 2001, Beijing won the twenty-ninth 2008 Olympic Games in the 112nd plenary session of the International Olympic Committee.<br>
				In August 8, 2008, the Beijing Olympic Games opened successfully.<br>
		<a class="navbar-brand">Record:</a><br>
		       Long Qingquan Chinese men's weightlifting team, in August 8, 2016, in the Rio Olympic Games men's 56 kilograms of weightlifting events, Long Qingquan won the gold medal with a total of 307 kg of world record.<br>
		       Sun Yang, the captain of the Chinese national swimming team, and the 2012 London Olympics, Sun Yang won the Olympic record in the men's 400 meter freestyle final with 3 points, 40 seconds and 14, and rewrote the history of the Chinese men's swimming event without gold medal, becoming the first Chinese men's swimming Olympic champion and the men's 1500 meter freestyle. In the competition, Sun Yang won the gold medal with 14 minutes, 31 seconds and 02, and broke the world record again.<br>
		       Zhou Lulu, the Chinese women's weightlifter, won the gold medal in the world cup in the women's 75 kilogram class competition in London in 2012.<br>
		      <a class="navbar-brand">Famous players:</a><br>
		       <img src="img/xuxin.jpg" width="200" height="130" />	<img src="img/sunyang.jpg" width="200" height="130" /> <img src="img/yaoming.jpg" width="200" height="130" />	<img src="img/lindan.jpg" width="200" height="130" />	
               </div>
           </div>
      </div>
    <div class="card">
      <div class="card-header">
        <a class="collapsed card-link navbar-brand" data-toggle="collapse" href="#collapseTwo">
        <pre><img src="img/UK3D.png" width="160" height="115" />    U.K.                                 <button type="button" class="btn btn-outline-dark" onclick = "window.location.href = 'Delegation_servlet?country=U.K.'"> learn for more <span class="badge badge-light">➤</span></button></pre> 
      </a>
      </div>
      <div id="collapseTwo" class="collapse" data-parent="#accordion">
        <div class="card-body">
         <a class="navbar-brand">History of Olympic Games in U.K.:</a><br>
         In early 2005, International Olympic Committee members visited 5 cities and conducted inspections. In May, International Olympic Committee members submitted an investigation report. In June 6th, the more than 120 page report was officially released, and the report decided to enter the final stage of the list of cities.
         The report pointed out that the bid for Paris and London was highly qualified, while Madrid and New York both received positive reviews, but New York still failed to identify the main venue. Moscow has been rated as a lack of detailed plan.
         In July 6, 2005, the International Olympic Committee held a plenary meeting in Singapore. In the voting, Moscow, New York and Madrid went out. In the fourth round of voting, London defeated Paris and became the host city of the thirtieth Summer Olympic Games. Then Roger, chairman of the International Olympic Committee, thanked the Singaporeans, the country and the 5 candidate cities, 
         and announced to the world that the right to host the thirtieth Summer Olympic Games belonged to London.<br>
        <a class="navbar-brand">Famous players:</a><br>
        <img src="img/jeccica.jpg" width="200" height="130" />	<img src="img/beckham.jpg" width="200" height="130" /> <img src="img/murey.jpg" width="200" height="130" />	<img src="img/looney.jpg" width="200" height="130" />
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header">
        <a class="collapsed card-link navbar-brand" data-toggle="collapse" href="#collapseThree">
          <pre><img src="img/Japan3D.png" width="160" height="115" />    Japan                                <button type="button" class="btn btn-outline-dark" onclick = "window.location.href = 'Delegation_servlet?country=Japan'"> learn for more <span class="badge badge-light">➤</span></button></pre> 
        </a>
      </div>
      <div id="collapseThree" class="collapse" data-parent="#accordion">
        <div class="card-body">
          <a class="navbar-brand">History of Olympic Games in Japan:</a><br>
          The thirty-second Summer Olympic Games of the 2020 Tokyo Olympic Games will be held in 2020 for the summer Olympic Games. After the successful bid, Tokyo became the first city in the world to host at least two summer Olympic Games in the world after Paris (France), London (UK), Losangeles (United States) and Athens (Greece). It was also the first in Tokyo.
          In March 2018, the Japanese government formulated measures to use the large cruise liner as a hotel during the Tokyo Olympic Games and Paralympic Games in 2020.<br>
        <a class="navbar-brand">Famous players:</a><br>
        <img src="img/gangqi.jpg" width="200" height="130" />	<img src="img/futian.jpg" width="200" height="130" /> <img src="img/fuyuanai.jpg" width="200" height="130" />	<img src="img/honda.jpg" width="200" height="130" />
        </div>
      </div>
    </div>
        <div class="card">
      <div class="card-header">
        <a class="collapsed card-link navbar-brand" data-toggle="collapse" href="#collapseFour">
       <pre><img src="img/USA3D.png" width="160" height="115" />    U.S.A.                               <button type="button" class="btn btn-outline-dark" onclick = "window.location.href = 'Delegation_servlet?country=U.S.A.'"> learn for more <span class="badge badge-light">➤</span></button></pre> 
      </a>
      </div>
      <div id="collapseFour" class="collapse" data-parent="#accordion">
        <div class="card-body">
        <a class="navbar-brand">History of Olympic Games in U.S.A.:</a><br>
          In the past 100 years, the United States, as a big sports country, participated in the first Olympic Games held in Athens in 1896. So far, the United States has participated in the 27 session, a total of 971 gold medals, 762 silver and 667 bronze medals. The top 3 of the Olympic gold medals has been kept in the top 3.<br>
          In the twenty-ninth Beijing Olympic Games in 2008, the United States won 36 gold medals, 38 silver medals and 36 bronze medals, ranking second in the gold medal list of the Olympic Games.<br>
          In 2012, the thirtieth London Olympic Games, the United States won 46 gold medals, 29 silver medals and 29 bronze medals, ranking first in the gold medal list of the Olympic Games.<br>
       <a class="navbar-brand">Famous players:</a><br>
        <img src="img/youyong.jpg" width="200" height="130" />	<img src="img/james.jpg" width="200" height="130" /> <img src="img/tiger.jpg" width="200" height="130" />	<img src="img/kobe.jpg" width="200" height="130" />
        </div>
      </div>
    </div>    <div class="card">
      <div class="card-header">
        <a class="collapsed card-link navbar-brand" data-toggle="collapse" href="#collapseFive">
       <pre><img src="img/Germany3D.png" width="160" height="115" />    Germany                              <button type="button" class="btn btn-outline-dark" onclick = "window.location.href = 'Delegation_servlet?country=Germany'"> learn for more <span class="badge badge-light">➤</span></button></pre> 
      </a>
      </div>
      <div id="collapseFive" class="collapse" data-parent="#accordion">
        <div class="card-body">
         <a class="navbar-brand">History of Olympic Games in Germany:</a><br>
         In August 26, 1972, the twentieth Olympic Games were held in Munich, West Germany. During the week before the games, people saw the warm comments on the conference from the media many times: This is a "peaceful and joyful event". It is true that this was the largest and most expensive event in the history of the Olympic Games, and the athletes and the countries represented were more than ever before. Israel also sent one of the largest delegations to the year - despite the physical and mental scars of some people in the Nazi concentration camp in Germany, 
         but they were very enthusiastic about participating in the Olympic Games.<br>
         <a class="navbar-brand">Famous players:</a><br>
         <img src="img/football.jpg" width="200" height="130" />	<img src="img/muler.jpg" width="200" height="130" /> <img src="img/siji.jpg" width="200" height="130" />	<img src="img/boer.jpg" width="200" height="130" />
        </div>
      </div>
    </div>
    
    <div class="card">
      <div class="card-header">
        <a class="collapsed card-link navbar-brand" data-toggle="collapse" href="#collapseSix">
        <pre><img src="img/Italy3D.png" width="160" height="115" />    Italy                                <button type="button" class="btn btn-outline-dark" onclick = "window.location.href = 'Delegation_servlet?country=Italy'"> learn for more <span class="badge badge-light">➤</span></button></pre> 
      </a>
      </div>
      <div id="collapseSix" class="collapse" data-parent="#accordion">
        <div class="card-body">
         <a class="navbar-brand">History of Olympic Games in Italy:</a><br>
         The seventeenth Summer Olympic Games is the 1960 Rome Olympic Games. Before 2600, 
         the Rome empire was forced to move the ancient Olympic Games from Olympia to Rome as a conqueror. 
         In 1960, the seventeenth Summer Olympic Games, held in Rome, capital of Italy, is of no significance. Its burning flame symbolizes peace and friendship. Before the opening of the conference, 
         the Preparatory Committee of the Rome Olympic Games held a large-scale torch relay. 
         After the ancient Olympic site was captured in ancient Greece, it was sent to Sicily in Italy by sea. The torch team passed through Italy and finally arrived in Rome.<br>
        
        </div>
      </div>
    </div>
    
    <div class="card">
      <div class="card-header">
        <a class="collapsed card-link navbar-brand" data-toggle="collapse" href="#collapseSeven">
        <pre><img src="img/Russia3D.png" width="160" height="115" />    Russia                               <button type="button" class="btn btn-outline-dark" onclick = "window.location.href = 'Delegation_servlet?country=Russia'"> learn for more <span class="badge badge-light">➤</span></button></pre> 
      </a>
      </div>
      <div id="collapseSeven" class="collapse" data-parent="#accordion">
        <div class="card-body">
         <a class="navbar-brand">History of Olympic Games in Russia:</a><br>
         The 1980 Summer Olympic Games in Moscow, the twenty-second Summer Olympic Games, was held in Moscow,
          the capital of the former Soviet Union, on July 19, 1980 -8 July 19, 1980. 
          The main venue was the Lenin central stadium in Moscow. This was the first time the Olympic Games came to a socialist country.<br>
        </div>
      </div>
    </div>
    
    <div class="card">
      <div class="card-header">
        <a class="collapsed card-link navbar-brand" data-toggle="collapse" href="#collapseEight">
        <pre><img src="img/France3D.png" width="160" height="115" />    France                               <button type="button" class="btn btn-outline-dark" onclick = "window.location.href = 'Delegation_servlet?country=France'"> learn for more <span class="badge badge-light">➤</span></button></pre> 
      </a>
      </div>
      <div id="collapseEight" class="collapse" data-parent="#accordion">
        <div class="card-body">
         <a class="navbar-brand">History of Olympic Games in France:</a><br>
         The thirty-third Summer Olympic Games, in August 1, 2017, the International Olympic Committee announced that Paris became the host city of the 2024 Olympic Games,
          and will be held in Paris, France, from August 2, 2024 to August 18, 2024. 
          This is after the Paris Olympic Games 1924, after a full 100 years, Paris held the Olympic Games again. Paris has also become a city after London, another three Olympic Games.<br>
        </div>
      </div>
    </div>
    
  </div>
</div>
	<br><br><br><br><br><br>
	<!-- News分隔栏 -->
	<div style="text-align: center">
		<span class="news">Tour in Japan!</span>
		<hr style="width:50%; height:1px;background-color:#000;"/>
	
	</div>

	<!-- News -->
	<div class="center">
		<div class="card" >
    		<img class="card-img-top" src="img/ad1.jpg" alt="Card image" style="width:100%">
    		<div class="card-body">
      			<p class="card-text">The Fuji Park in the foothills of the Fuji mountain in Shizuoka County, also has a Fuji Park, with an area of 740 thousand square meters. There are more than 1000 species of wild animals in the possession of 40 species, with only 30 lions. Visitors can drive cars and watch all kinds of animals stocked in the park.</p>
      			<a href="#" class="btn btn-primary">See More</a>
    		</div>
  		</div>&nbsp&nbsp&nbsp
  		
  		<div class="card">
    		<img class="card-img-top" src="img/ad3.jpg" alt="Card image" style="width:100%">
    		<div class="card-body">
      			<p class="card-text">In Japanese, Mt Fuji means "Volcano". It is 3776 meters above sea level and 90.76 square kilometers. </p>
      			<a href="#" class="btn btn-primary">See More</a>
    		</div>
  		</div>&nbsp&nbsp&nbsp
  		
  		<div class="card">
    		<img class="card-img-top" src="img/ad4.jpg" alt="Card image" style="width:100%">
    		<div class="card-body">
      			<p class="card-text">Take a convenient and comfortable tram for a small trip. It takes only 1 to 2 hours to visit the cultural ancient capital, the world heritage, the hot springs at the foot of the Fuji mountain, the museum in Hakone and the taste of local food.</p>
      			<a href="#" class="btn btn-primary">See More</a>
    		</div>
  		</div>
		
	</div>
	
	<div style="height:40px"></div>
	
	<!-- 版权声明 -->
	<div class="down text-center" style="background-color:#343A40;color:#fff; height:130px">
		<div class="bg-dark">
	        <div style="height:10px"></div>
	        <div>TOKYO 2020 PRE-GAMES TRAINING CAMPS ONLINE GUIDE</div>
	       	<div>
	        	<a href="#" target=_blank style="color:white">Website Map</a> |
	            <a href="#" target=_blank style="color:white">Website Statement</a> |
	            <a href="#" target=_blank style="color:white">Contect us</a> |
	            <a href="#" target=_blank style="color:white">Help</a> |
	            <a href="#" target=_blank style="color:white">Our Email</a> 
	        </div>
	  		<div style="height:10px"></div>
	        <div>Software school of Northeastern University<br/>
				<span style="font-size:12px">?Software school of Northeastern University. All rights reserved.</span>
	      	</div>
		</div>
	</div>
	
  </body>
</html>
