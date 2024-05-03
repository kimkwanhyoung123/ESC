<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
@import url("https://fonts.googleapis.com/css?family=Abril+Fatface|Open+Sans:400,700&display=swap");
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
   font-size: 3.5em;
   font-family: 'Cafe24Supermagic-Bold-v1.0', sans-serif;
   font-size : 35px;
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

.form-area-signup {
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

.btn-sign {
   border: none;
   background: rgb(249, 63, 76);
   color: white;
   font-weight: bold;
   width: 100%;
   padding: 10px;
   margin-top: 20px;
   border-radius: 50px;
   cursor: pointer;
   transition: background 0.1s ease 0.1s;
}

.btn-sign:hover {
   background: rgb(230, 57, 69);
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
               <p class="fas fa-2x fa-angle-left angle-left-color" id="homeStr">HOME</p>
            </div>
         </article>

         <article class="form-area">
            <!-- Form area Sign Up -->
            <div class="organize-form form-area-signup">
               <h2>SIGN UP</h2>
               <form class="form" action="signup.do">
                  <div class="form-field">
                     <label for="studentNo">학번</label> <input type="text"
                        id="studentNo" name="userNo" required />
                  </div>
                  
                  <div class="form-field">
                     <label for="studentName">이름</label> <input type="text"
                        id="studentName" name="userName" required />
                  </div>

                  <div class="form-field">
                     <label for="studentPw">비밀번호</label> <input type="password"
                        id="studentPw" name="userPassword" required/>
                  </div>

                  <div class="form-field">
                     <label for="studentPwCk">비밀번호를 한 번 더 입력하세요</label> <input
                        type="password" id="studentPwCk" name="userPasswordCheck" />
                  </div>

                  <div class="form-field">
                     <label for="dateOfbirth">생년월일 ex.20010101</label> <input
                        type="text" id="dateOfbirth" name="dateOfbirth" required />
                  </div>

                  <div class="form-field">
                     <label for="address">주소</label> <input type="text" id="address"
                        name="address" required/>
                  </div>

                  <button class="btn-sign btn-up" id="signupBtn">회원가입</button>
               </form>
               <p>
                  이미 계정이 있다면? <a href="login_form.do" class="link-in">로그인창으로!</a>
               </p>

            </div>
         </article>

         <article class="signup-right">
            <i class="fas fa-2x fa-bars bars-style"></i> <img
               id="signup-right-img" src="https://i.ibb.co/yPtmFvG/2.png">
         </article>
      </section>
   </main>

<!-- <script type="text/javascript"> 
// //Elements
//    const el = {
//            signUpHome: document.getElementById('sign-up'),
//            signInHome: document.getElementById('sign-in'),
//            btnHome: document.querySelector('.btn-back'),
//            pageMain: document.querySelector('.main'),
//            pageHome: document.querySelector('.home'),
//            pageSignUp: document.querySelector('.sign-up'),
//            formArea: document.querySelector('.form-area'),
//            sideSignLeft: document.querySelector('.signup-left'),
//            sideSignRight: document.querySelector('.signup-right'),
//            formSignUp: document.querySelector('.form-area-signup'),
//            formSignIn: document.querySelector('.form-area-signin'),
//            linkUp: document.querySelector('.link-up'),
//            linkIn: document.querySelector('.link-in'),
//            btnSignUp: document.querySelector('.btn-up'),
//            btnSignIn: document.querySelector('.btn-in'),
//            labels: document.getElementsByTagName('label'),
//            inputs: document.getElementsByTagName('input'),
//          };

// // ADD Events
// // Show the page Sign Up
// el.signUpHome.addEventListener('click', function(e) {
//   showSign(e, 'signup');
// });
// el.linkUp.addEventListener('click', function(e) {
//   showSign(e, 'signup');
// });

// // Show the page sign in
// el.signInHome.addEventListener('click', function(e) {
//   showSign(e, 'signin');
// });
// el.linkIn.addEventListener('click', function(e) {
//   showSign(e, 'signin');
// });
// el.btnSignUp.addEventListener('click', function(e) {
//   showSign(e, 'signin');
// });

// // Show the page Home
// el.btnHome.addEventListener('click', showHome);


// // Functions Events
// // function to show screen Sign up/Sign in
// function showSign(event, sign) {

//   if (sign === 'signup') {
//     el.formSignUp.style.display = 'flex';
//     el.formSignIn.style.opacity = '0';
//     setTimeout(function() {
//       el.formSignUp.style.opacity = '1';
//     }, 100);
//     el.formSignIn.style.display = 'none';

//   } else {
//     el.formSignIn.style.display = 'flex';
//     el.formSignUp.style.opacity = '0';
//     setTimeout(function() {
//       el.formSignIn.style.opacity = '1';
//     }, 100);
//     el.formSignUp.style.display = 'none';
//   }

//   el.pageHome.style.opacity = '0';
//   setTimeout(function() {
//     el.pageHome.style.display = 'none';
//   }, 700);
  
//   setTimeout(function() {
//     el.pageSignUp.style.display = 'flex';
//     el.pageSignUp.style.opacity = '1';
    
//     setTimeout(function() {
//       el.sideSignLeft.style.padding = '20px';
//       el.sideSignLeft.style.opacity = '1';
//       el.sideSignRight.style.opacity = '1';
//       el.sideSignRight.style.backgroundPositionX = '230%';

//       el.formArea.style.opacity = '1';
//     }, 10);

//   }, 900);
// }

// // Behavior of the inputs and labels
// for (input of el.inputs) {
//   console.log(input)
//   input.addEventListener('keydown', function() {
//     this.labels[0].style.top = '10px';
//   });
//   input.addEventListener('blur', function() {
//     if (this.value === '') {
//       this.labels[0].style.top = '25px';
//     }
//   })
// }
 </script> -->
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

   // 코드 작성할 스크립트
/*    $('#signupBtn').prop('disabled', true);
   $('#studentPwCk').prop('disabled', true); */
   
   $('#studentPw').on('input', function(){
      const studentPw = $.trim($('#studentPw').val()); // 앞뒤 공백 제거한 값으로 넣어주기
      const studentPwCk = $.trim($('#studentPwCk').val());
      
      if (studentPw) {
         // pw 입력값 있다면 확인란 활성화
         $('#studentPwCk').prop('disabled', false);
      } else {
         $('#studentPwCk').prop('disabled', true);
      }
   });
   
   
   $('#studentPwCk').on('input', checkPw); // 비밀번호 확인의 입력값 변경될 때 체크하는 함수 실행되도록!
   
   function checkPw() {
      const studentPw = $.trim($('#studentPw').val()); // 앞뒤 공백 제거한 값으로 넣어주기
      const studentPwCk = $.trim($('#studentPwCk').val());

      const messageElement = $('<div>'); // document.createElement('div')와 같은 역할
      if (studentPw && studentPwCk && studentPw == studentPwCk) {
         messageElement.text('입력한 비밀번호가 일치합니다.');
          messageElement.addClass('successMsg');
/*           $('#signupBtn').prop('disabled', false); // 회원가입 버튼 활성화 */
        } else {
          messageElement.text('비밀번호가 일치하지 않습니다.');
          messageElement.addClass('errorMsg');
/*           $('#signupBtn').prop('disabled', true); // 회원가입 버튼 비활성화 */
        }

        messageElement.addClass('message');
        $('#studentPwCk').parent().append(messageElement); // 이때 말하는 parent는 studentPwCk를 감싸고 있는 부모 <div>를 의미

        setTimeout(function() {
          messageElement.fadeOut(300, function() {
            $(this).remove();
          });
        }, 3000);
        
        // 이전에 나타난 메시지 찾아서 삭제
        $('#studentPwCk').parent().find('.message').remove();

        // 새로 보여져야 하는 메시지 추가
        $('#studentPwCk').parent().append(messageElement);
   }
   

	
 	$('#signupBtn').on('click', function (e) {
	    e.preventDefault(); // 폼 전송 방지

	    const studentPw = $.trim($('#studentPw').val());
	    const studentPwCk = $.trim($('#studentPwCk').val());
	    const address = $.trim($('#address').val());
	    const dateOfbirth = $.trim($('#dateOfbirth').val());
	    const studentName = $.trim($('#studentName').val());
	    const studentNo = $.trim($('#studentNo').val());

	    let errorMessage = '';  //여러 경우의 수를 고려하기 위해서 예외에 해당하는 문장을 추가할 수 있도록 처음에 공백으로 처리해 준 것.

	    if (!studentPw) {
	        errorMessage =  errorMessage + '비밀번호를 입력해주세요.\n';
	    }
	    if (!address) {
	    	errorMessage =  errorMessage + '주소를 입력해주세요.\n';
	    }
	    if (!dateOfbirth) {
	    	errorMessage =  errorMessage + '생년월일을 입력해주세요.\n';
	    }
	    if (!studentName) {
	    	errorMessage =  errorMessage + '이름을 입력해주세요.\n';
	    }
	    if (!studentNo) {
	    	errorMessage =  errorMessage + '학번을 입력해주세요.\n';
	    } 
	    if (studentPw != studentPwCk) {
	    	errorMessage =  errorMessage + '비밀번호가 일치하지 않습니다.\n';
	    }
	    if (studentPw && studentPwCk && studentPw == studentPwCk && address && dateOfbirth && studentName && studentNo) {
	        // 비밀번호가 일치하고 모든 필드가 비어 있지 않는 경우, 폼을 서버로 제출
	        $('form').submit();
	    } else if(studentPw != studentPwCk) {
	    	alert(errorMessage);
	    } else {
	        // 오류 메시지를 표시
	        alert(errorMessage);
	    }
	}); 
	
/*     $('#signupBtn').on('click', function (e) {
    e.preventDefault(); // 폼 전송 방지

    const studentPw = $.trim($('#studentPw').val());
    const studentPwCk = $.trim($('#studentPwCk').val());
    const address = $.trim($('#address').val());
    const dateOfbirth = $.trim($('#dateOfbirth').val());
    const studentName = $.trim($('#studentName').val());
    const studentNo = $.trim($('#studentNo').val());

    let errorMessage = '';  //여러 경우의 수를 고려하기 위해서 예외에 해당하는 문장을 추가할 수 있도록 처음에 공백으로 처리해 준 것.

    if (!studentPw) {
        errorMessage =  errorMessage + '비밀번호를 입력해주세요.\n';
    }
    if (!address) {
    	errorMessage =  errorMessage + '주소를 입력해주세요.\n';
    }
    if (!dateOfbirth) {
    	errorMessage =  errorMessage + '생년월일을 입력해주세요.\n';
    }
    if (!studentName) {
    	errorMessage =  errorMessage + '이름을 입력해주세요.\n';
    }
    if (!studentNo) {
    	errorMessage =  errorMessage + '학생 번호를 입력해주세요.\n';
    } 
    if (studentPw != studentPwCk) {
    	errorMessage =  errorMessage + '비밀번호가 일치하지 않습니다.\n';
    }
    if (studentPw == studentPwCk && studentPw != null && studentPwCk != null && address != null & dateOfbirth != null & studentName != null && studentNo != null) {
        // 비밀번호가 일치하고 모든 필드가 비어 있지 않는 경우, 폼을 서버로 제출
        $('form').submit();
    } else if(studentPw != studentPwCk) {
    	alert(errorMessage);
    } else {
        // 오류 메시지를 표시
        alert(errorMessage);
    }
});  */

   
 //------------------------------------------------------------------------------------------- <09/18> 추가 코드 

   $('#dateOfbirth').on('input', checkBirth); // 생일창의 입력 값이 변경될 때 함수 실행
   function checkBirth() {
	   const userBirth = $.trim($('#dateOfbirth').val()); //앞뒤 공백 제거해서 변수에 저장
	   
	   const messageElement2 = $('<div>');   //새로운 메세지를 띄우고 싶을 수도 있으니 미리 관련 div를 만들어 놓은 것.
	   if(userBirth.length == 8) {
	       messageElement2.text('입력한 생년월일 형식이 올바릅니다.');
		   messageElement2.addClass('successMsg2');
/* 		   $('#signupBtn').prop('disabled', false); // 회원가입 버튼 활성화 */
	   } else {
		   messageElement2.text('생년월일의 형식을 확인해주세요.');
		   messageElement2.addClass('errorMsg2'); 
/* 	 	   $('#signupBtn').prop('disabled', true); // 회원가입 버튼 비활성화 */
	 	   
	 	   
	   }
	   
	   messageElement2.addClass('message2');
	   $('#dateOfbirth').parent().append(messageElement2); // 이때 말하는 parent는 dateOfbirth를 감싸고 있는 부모 <div>를 의미
	   
	   setTimeout(function() {
		   messageElement2.fadeOut(300, function() {
			   $(this).remove();
		   });
	   }, 3000);
	   
       // 이전에 나타난 메시지 찾아서 삭제
       $('#dateOfbirth').parent().find('.message2').remove();

       // 새로 보여져야 하는 메시지 추가
       $('#dateOfbirth').parent().append(messageElement2);
	   
	   
   }
   
   
   // home 글씨 누르면 home 화면으로 돌아가기
	$("#homeStr").on("click", function (){
    window.location.href = "${pageContext.request.contextPath}/home.do"
 }); 
    
  
</script>
</body>
</html>