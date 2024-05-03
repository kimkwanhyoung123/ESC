<%@ page language="java" contentType="text/html; charset=UTF-8"
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

@font-face {
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/Cafe24Supermagic-Bold-v1.0.woff2')
		format('woff2');
	font-weight: 700;
	font-style: normal;
}

* {
	margin: 0;
	padding: 0;
	outline: none;
	box-sizing: border-box;
	line-height: 1.5em;
	color: #747474;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	font-size: 15px;
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

.btn-back {
	align-self: flex-start;
	display: flex;
	align-items: center;
	font-weight: bold;
	cursor: pointer;
}

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

.btnBack {
	border: none;
	background: #6c6c6c;
	color: white;
	font-weight: bold;
	width: 35%;
	padding: 10px;
	margin-top: 20px;
	border-radius: 20px;
	cursor: pointer;
	transition: background 0.1s ease 0.1s;
	margin-left: 5px;
}

.btnBack:hover {
	background: #545454;
}

.btn-sign {
	border: none;
	background: rgb(249, 63, 76);
	color: white;
	font-weight: bold;
	width: 35%;
	padding: 10px;
	margin-top: 20px;
	border-radius: 20px;
	cursor: pointer;
	transition: background 0.1s ease 0.1s;
}

.btn-sign:hover {
	background: rgb(230, 57, 69);
}

.btnArea {
	display: flex;
	justify-content: right;
	margin-top: 20px;
	margin-right: 80px;
	/*    align-items: center; */
}

.infoArea {
	display: relative;
	margin-bottom: 30px;
	margin-top: -200px;
}

#title {
	margin-bottom: 30px;
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
               <h2 id="title" style="font-size:30px;">학생 등록</h2>
               <form class="form" method="post" action="register.do">
                  <div class="infoArea">
                  <div class="select" >
                     <label>성별</label>
                     <input type="radio" id="select" name="gender" value="W">
                     <label for="select">여성</label> 
                     <input type="radio" id="select2" name="gender" value="M">
                     <label for="select2">남성</label>
                  </div>
               
                  <div class="form-field">
                     <label for="userNo">학번</label> <input type="text" id="userNo"
                        name="userNo" required />
                  </div>

                  <div class="form-field">
                     <label for="userName">이름</label> <input type="text" id="userName"
                        name="userName" required />
                  </div>
               
               </div>
                  
                  <div class="btnArea">
                     <button class="btn-sign btn-in" type="submit">등록하기</button>
                     <button class="btnBack btn-in" type="button" id="homeBtn">돌아가기</button>
                  </div>
               </form>
            </div>
         </article>

         <article class="signup-right">
            <i class="fas fa-2x fa-bars bars-style"></i> <img
               id="signup-right-img" src="https://i.ibb.co/yPtmFvG/2.png">
         </article>
      </section>
   </main>

   <script>
   const inputs = document.getElementsByTagName('input');
   const labels = document.getElementsByTagName('label');
   
   for(input of inputs) {
      input.addEventListener('keydown', function() {
          this.labels[0].style.top = '10px';
        });
        input.addEventListener('blur', function() {
          if (this.value === '') {
            this.labels[0].style.top = '25px';
          }
        })
   }
   
      $('#homeBtn').on('click', function() {
         window.location.href = "m_main.do";
      });

      $('#addBtn').on('click', function() {
         window.location.href = "m_insert_form.do";
      });


   </script>
</body>
</html>