<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="esc.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ESC-ForManager</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
@import
	url("https://fonts.googleapis.com/css?family=Abril+Fatface|Open+Sans:400,700&display=swap")
	;

@font-face {
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/Cafe24Supermagic-Bold-v1.0.woff2')
		format('woff2');
	font-weight: 700;
	font-style: normal;
}
/* font-family: 'Abril Fatface', cursive;
font-family: 'Open Sans', sans-serif; */
* {
	margin: 0;
	padding: 0;
	outline: none;
	box-sizing: border-box;
	line-height: 1.5em;
	color: #747474;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	font-size: 12px;
}

body {
	height: 100vh;
	display: flex;
	background: #EDF5FD;
}

.main {
	width: 70%;
	height: 75%;
	margin: auto;
	border-radius: 10px;
	/* display: flex; */
	/* background: rgb(249, 63, 76); */
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.2);
	transition: all 0.1s ease-in 0.1s;
}

.btn {
	background: #d3d3d3;
	border: 2px solid black;
	border-radius: 150px;
	align-self: center;
	width: 100px;
	padding: 8px 16px;
	margin: 10px;
	color: black;
	font-weight: bold;
	cursor: pointer;
	transition: all 0.1s ease-in-out 0.1s;
}

.btn:hover {
	background: #bab6b6;
	color: #ffffff;
}

/* PAGE SING UP */
.sign-up {
	display: flex; /*flex or none*/
	opacity: 1;
	width: 100%;
	height: 100%;
}

.signup-left {
	width: 50%;
	padding: 20px;
	/* padding: 20px; */
	opacity: 1;
	display: flex;
	flex-flow: column wrap;
	justify-content: space-between;
	font-size: 14px;
	background: #0F4C82;
	border-radius: 10px 0 0 10px;
	transition: all 0.5s ease-in 0.2s;
}

.signup-left h1 {
	font-size: 21px;
	font-family: "Abril Fatface", cursive;
	letter-spacing: 2px;
}

.signup-left h1, .signup-left div, .signup-left h3, .signup-left p {
	color: white;
}

.signup-left h3 {
	font-size: 2.2em;
}

/* .btn-back {
   align-self: flex-start;
   display: flex;
   align-items: center;
   font-weight: bold;
   cursor: pointer;
} */
.angle-left-color {
	color: white;
	margin-right: 5px;
}

.form-area {
	position: absolute;
	top: 20%;
	left: 40%;
	width: 20%;
	height: 60%;
	padding: 20px 0;
	background: white;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	border-radius: 10px;
	z-index: 2;
	opacity: 1;
	transition: opacity 0.5s ease-in 0.2s;
}

.organize-form {
	width: 100%;
	height: 100%;
	display: flex;
	flex-flow: column wrap;
	justify-content: space-around;
	align-items: center;
}

.organize-form h2 {
	font-size: 1.4em;
	font-weight: normal;
}

.organize-form h2::after {
	content: "";
	display: block;
	width: 50%;
	height: 2px;
	background: rgb(249, 63, 76);
	margin: 0 auto;
}

.organize-form p a {
	color: rgb(249, 63, 76);
	text-decoration: none;
	font-weight: bold;
}

.form-area-signin {
	/* display: none; */
	opacity: 1;
	transition: all 0.4s ease-in 0.2s;
}

.form {
	width: 85%;
}

.form-field {
	display: flex;
	flex-flow: column wrap;
	width: 100%;
}

.form-field input {
	border: none;
	padding: 5px;
	border-bottom: 1px solid rgba(116, 116, 116, 0.44);
	height: 30px;
	transition: border-bottom 0.1s ease-in-out 0.1s;
}

.form-field input:focus {
	border-bottom: 1px solid rgb(249, 63, 76);
}

.form-field label {
	position: relative;
	top: 25px;
	left: 5px;
	cursor: text;
	transition: all 0.2s ease-in-out 0.1s;
	color: rgba(116, 116, 116, 0.44);
	user-select: none;
}

.signup-right {
	width: 50%;
	padding: 20px;
	background: #D9E6F0;
	border-radius: 0 10px 10px 0;
	display: flex;
	flex-flow: column wrap;
	justify-content: space-between;
	align-items: flex-end;
	overflow: hidden;
	/* background-image: url("https://i.ibb.co/yPtmFvG/2.png");
  background-size: 70%;
  background-repeat: no-repeat;
  background-position: 235% 50%; */
	opacity: 1;
	transition: opacity 0.5s ease-in 0.2s, background-position-x 0.5s
		ease-in 0.2s;
}

#signup-right-img {
	width: 40%;
	display: flex;
	position: relative; /
	left: 50%;
	top: 50%;
	transform: translate(60px, -400px);
	transition: all 0.5s ease-in 0.2s;
}

.bars-style {
	color: rgb(249, 63, 76);
	cursor: pointer;
	font-size: 16px;
}

@media ( max-width : 1023px) {
	.main {
		width: 100%;
		height: 100%;
	}
	.home, .signup-left {
		border-radius: 0;
	}
	.form-area {
		left: 35%;
		width: 30%;
		height: 70%;
	}
}

@media ( max-width : 768px) {
	.form-area {
		left: 20%;
		width: 60%;
	}
	.wc_message {
		/*     display: none; */
		opacity: 0;
		transition: opacity .1s;
	}
}

@media ( max-width : 375px) {
	.form-area {
		left: 10%;
		width: 80%;
	}
}

@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap')
	;

.select {
	padding: 15px 10px;
	display: flex;
	justify-content: left;
	align-items: center;
}

.select input[type=radio] {
	display: none;
}

.select input[type=radio]+label {
	display: inline-block;
	cursor: pointer;
	height: 35px;
	width: 80px;
	margin-left: 10px;
	border: 1px solid #333;
	line-height: 24px;
	text-align: center;
	font-weight: bold;
	font-size: 13px;
	/*    border-radius: 50px; */
}

.select input[type=radio]+label {
	padding: 5px;
	background-color: #fff;
	color: #333;
}

.select input[type=radio]:checked+label {
	background-color: #333;
	color: #fff;
}

/* .btn {
   background: none;
   border: 2px solid white;
   border-radius: 150px;
   align-self: center;
   width: 150px;
   padding: 8px 16px;
   margin: 10px;
   color: white;
   font-weight: bold;
   cursor: pointer;
   transition: all 0.1s ease-in-out 0.1s;
}

.btn:hover {
   background: white;
   color: rgb(249, 63, 76);
} */
.infoArea {
	display: relative;
	margin-bottom: 30px;
	margin-top: -200px;
}

#title {
	margin-bottom: 30px;
}

#buttonDiv {
	justify-content: space-between;
}
</style>
</head>
<body>
   <main class="main">
      <section class="sign-up">
         <article class="signup-left">
            <h1>ESC</h1>
            <div class="wc_message">
               <h3>Easy Self-Study Controller</h3>
               <p>For LX Spatial Information Academy</p>
            </div>
            <div class="btn-back">
               <i class="fas fa-2x fa-angle-left angle-left-color"></i>
            </div>
         </article>

         <article class="form-area">
            <!-- Form area Sign In -->
            <div class="organize-form form-area-signin">
               <p style="font-size: 40px;">신청 페이지</p>
               <div style="font-size: 25px;">
                  <%
                  User usNo = (User) session.getAttribute("loginUser");
                  String userNo = usNo.getUserNo();
                  %>
                  학번 :
                  <%=userNo%></br>

                  <%
                  User us = (User) session.getAttribute("loginUser");
                  String username = us.getUserName();
                  %>

                  이름 :
                  <%=username%></br>
                  <%
                  Date date = new Date();
                  SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
                  String strdate = simpleDate.format(date);
                  %>

                  날짜 :<%=strdate%>
                  </br>
               </div>
               <div style="border: 3px solid; padding: 10px; border-radius: 10px;">
                  <form action="apply.do">
                     <label for="select_value" style="font-size: 25px;">예약 :</label> 
                     <select name="reservationTime" id="select_value">
                        <option>예약시간선택</option>
                        <!-- 내일확인 -->
                        <option value="0.5">18:00~18:30</option>
                        <option value="1.0">18:00~19:00</option>
                        <option value="1.5">18:00~19:30</option>
                        <option value="2.0">18:00~20:00</option>
                        <option value="2.5">18:00~20:30</option>
                        <option value="3.0">18:00~21:00</option>
                        <option value="3.5">18:00~21:30</option>
                        <option value="4.0">18:00~22:00</option>
                        <option value="4.5">18:00~22:30</option>
                        <option value="5.0">18:00~23:00</option>
                        <option value="5.5">18:00~23:30</option>
                        <option value="6.0">18:00~24:00</option>
                     </select>
                  
               </div>
               <p style="font-size: 20px;">
                  열정 넘치는<%=username%>님을 응원합니다 !
               </p>
               <div id="buttonDiv">
                  <button class="btn" type="submit">신청하기</button>
                  </form>
                  <button class="btn" id="go_student_main">돌아가기</button>
               </div>
            </div>
         </article>

         <article class="signup-right">
            <i class="fas fa-2x fa-bars bars-style"></i> <img id="signup-right-img" src="https://i.ibb.co/yPtmFvG/2.png">
         </article>
      </section>
   </main>

   <script>
   
   $("#select_value").on("change", function() {
	    var selectedValue = $(this).val(); // 선택된 옵션의 value 값을 가져옴
	    localStorage.setItem("reservationTime", selectedValue); // localStorage에 저장
	});
   
      $("#go_student_main")
            .on(
                  "click",
                  function() {
                     window.location.href = "${pageContext.request.contextPath}/student_main.do"
                  });
   </script>

</body>
</html>