<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>   
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ESC</title>  
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
	font-family: "Open Sans", sans-serif;
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
/* PAGE HOME */
.home {
	width: 100%;
	height: 100%;
	border-radius: 10px;
	color: white;
	background: #0F4C82;
	display: flex; /* flex or none */
	flex-flow: column wrap;
	justify-content: center;
	align-items: center;
	opacity: 1;
	transition: all 0.4s ease-in 0.2s;
}

.home h1 {
	margin-bottom: 80px;
	color: white;
	text-align: center;
}

.home h1 span {
	color: #FFFF59;
	display: block;
	font-size: 3.5em;
	font-family: 'Cafe24Supermagic-Bold-v1.0', sans-serif;
}

.home p {
	margin-top: 40px;
	color: white;
	text-align: center;
	display: block;
	font-size: 3.5em;
	font-family: 'Cafe24Supermagic-Bold-v1.0', sans-serif;
	font-size: 30px;
	padding-bottom: 50px;
	margin-bottom: 70px;
}

.home button {
	font-family: 'Cafe24Supermagic-Bold-v1.0', sans-serif;
	font-size: 20px;
}

.home p a {
	color: white;
}

a.link-copy {
	text-decoration: none;
}

.btn {
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
</style>
</head>
<body>
<main class="main">
  <section class="home">
    <h1><span>Error!</span></h1>
    <p>조회되지 않는 회원 정보입니다.<br/> 학번 또는 이름이 올바른지 다시 한 번 확인해주시기 바랍니다.</p>
    
    <button id="errorPage" class="btn">돌아가기</button>
  </section>
</main>

<script>
   // 코드 작성할 스크립트
   $("#errorPage").on("click", function (){
      window.location.href = "${pageContext.request.contextPath}/signup_form.do"
   });
   
   
</script>
</body>
</html>