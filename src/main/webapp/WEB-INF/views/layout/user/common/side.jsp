<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 회원정보</title>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/user/mypage_info.css" /> --%>

</head>
<style>
@charset "UTF-8";

@font-face {
	font-family: 'GmarketSansMedium';
	src:url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
	font-weight: normal;
	font-style: normal;
}
* {
	margin:0px;
	padding:0px;
	font-family: 'GmarketSansMedium', sans-serif;
} 
#con {
	width: 700px;
	height: 700px;
	display: flex;
	align-items: column;
	margin-left: auto;
	margin-right: auto;
}

/* Accordion start */


/* 글자가 뜨는 곳*/
.showinfo {
   display: none;
   margin-top: 10px;
 }
 
.showinfo.active {
   display: block;
}
 


/* Accordion Container */
.containerAcco {
   width: 100%;
   max-width: 250px;
   min-width: 200px;
   position: relative;
  
} 


.containerAcco:hover.containerAcco:before {
   box-shadow: 0px 40px 90px #52616b;
}

.accordion {
   list-style: none; 
   margin:0;
   padding: 0;
   background-color: white;
   border-radius: 3px;
}

.accordionTitle {
  
    font-size: 30px;
  
    color: rgb(1,19,67);
  
    margin-top: 20px;

}

.accordionTitle:hover {
   padding-left: 25px;
   cursor: pointer;
} 



.accordionTitle:before {
   width: 100%;
   background-color: #c9d6df;
}
.accordionTitle:after {
   background-image: linear-gradient(90deg, #52616b, #c9d6df);
   width: 0%;
}

.accordionTitle:hover::after {
   width: 100%;
}



/* Accordion Item Icon  */
.accIcon {
   float: right;
   width: 30px;
   height: 30px;
   display: flex;
   margin-top: -3px;
   align-items: center;
   justify-content: center;
}

.accIcon:before,
.accIcon:after {
   content:'';
   position: absolute;
   border-radius: 50px;
   background-color: #c9d6df;
   transition: ease 0.3s all;
}

.accIcon:before {
   width: 2px;
   height: 20px;
}

.accIcon:after {
   width: 20px;
   height: 2px;
}

.accordionTitle:hover .accIcon:before,
.accordionTitle:hover .accIcon:after {
   background-color: #52616b;
}

.accIcon.anime.accIcon:before {
   transform: rotate(90deg);
}


/* Text Content */
.accordion .item .text {
   opacity: 0;
   height: 0;
   padding: 0px 20px;
   position: relative;
   line-height: 24px;
   font-size: 16px;
   font-weight: 200;
   transition: all 0.6s cubic-bezier(.42,.2,.08,1);
   overflow: hidden;
   background-color: white;
   letter-spacing: 0.5px;
}

/* Text Content - Class for JS to hide and show */
.accordion .item .text.show {
   opacity: 1;
   height: auto;
   padding: 25px 20px;
   /* position: relative;
   z-index: 0;
   border-radius: 0px 0px 3px 3px; */
}

li {
	list-style: none;
}

#MyPage_text {
	margin-top: 0px;
}



#info {
	font-weight: bolder;
	padding-bottom: 10px;
}

.menu {
	text-decoration: none;
	color: rgb(1, 19, 67);
	font-size: 24px;
	width: 400px;
	
}

.menu:hover {
	font-weight: bolder;
}
.text:hover {
	font-weight: bolder;
}

p#MyPage {
	font-size: 35px;
	text-align: center;
}

#Whole {
	width: 900px;
	margin-left:100px;
}

#title {
	font-size: 35px;
	font-weight: bold;
	
	border-bottom: solid;
    padding-bottom: 11px;
}

hr {
	margin-top: 20px;
	width: 900px;
	height: 2px;
	background-color: rgb(1, 19, 67);
}

hr#menu_bar {
	width: 200px;
}




</style>
<body>
	<div id="con">
		<div id="menu">
			<nav>
				<section id="wrapper">
				<div class="containerAcco">
   					<ul class="accordion">
				
      					<li class="item">
       					  <h2 class="accordionTitle">교통사고<span class="accIcon"></span></h2>
       						  	<div class="text">
       						  		<a href="caraccident_percnt" class="menu" id="info">교통사고 데이터</a> <br><br>
       						  		<a href="caraccident_chart" class="menu" id="info">사고 통계</a> <br><br>
       						  		<a href="caraccident_top3" class="menu" id="info">사고다발지역 TOP3</a> <br><br>
       						  		<a href="caraccident_eventinfo?type=all&eventType=acc" class="menu" id="info">실시간 사고 정보</a> <br><br>
								</div>
							</li>
						</ul>
					</div>
				</section>
				<!-- partial -->
				<script src="resources/js/user/accordion_user.js"></script>
			</nav>
		</div>
	</div>
</body>


</html>