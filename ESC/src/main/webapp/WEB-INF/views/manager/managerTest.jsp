category<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>   
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
	margin-bottom: 40px;
	color: white;
	text-align: center;
}

.home h1 span {
	color: #FFFF59;
	display: block;
	font-size: 3.5em;
	font-family: "Abril Fatface", cursive;
}

.home p {
	margin-bottom: 20px;
	font-size: 1.5em;
	color: #ffffff;
}

.home p a {
	color: white;
}

a.link-copy {
	text-decoration: none;
}

.btn, .trigger {
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

.btn:hover, .trigger:hover {
	background: white;
	color: #098CFF;
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
  <h1><span>ESC</span></h1>
  <p>학생 등록하기</p>
  	
  	<form method="post" action="register.do">
	학번 : <input type="text" name="userNo">
	이름 : <input type="text" name="userName"></br>
 	
 	<label for="dropdown">성별 :</label>
    <select id="dropdown" name="gender">
        <option value="M">남자</option>
        <option value="W">여자</option>
    </select>
    
    <label for="dropdown">유형 :</label>
    <select id="dropdown" name="category">
        <option value="student">교육생</option>
        <option value="manager">관리자</option>
    </select>
 
     <!-- 버튼 --> 
     <button class="trigger">교육생 등록하기</button> 
     
     </form>
     
     <button class="btn" id="homeBtn">돌아가기</button>
     
  </section>
</main>

<script>
$('#homeBtn').on('click', function(){
	   window.location.href = "m_main.do";
 });
 
 $('#addBtn').on('click', function(){
	   window.location.href = "m_insert_form.do";
  });
 	
 	/* 모달관련script */
     /*  var modal = document.querySelector(".modal"); 
      var trigger = document.querySelector(".trigger"); 
      var closeButton = document.querySelector(".close-button"); 
      var cancelButton = document.querySelector("#cancel");

     //console.log(modal);

     function toggleModal() { 
          modal.classList.toggle("show-modal"); 
      }

     function windowOnClick(event) { 
          if (event.target === modal) { 
              toggleModal(); 
          } 
      }
     
     function home() {
  	   window.location.href = "m_main.do";
     }

     trigger.addEventListener("click", toggleModal); 
      closeButton.addEventListener("click", toggleModal); 
      window.addEventListener("click", windowOnClick);  */
   
</script>
</body>
</html>