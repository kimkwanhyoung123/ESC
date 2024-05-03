<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="esc.vo.User"%>
<%@page import="esc.vo.Seat"%>
<%@page import="java.util.List"%>
<%@page import="com.google.gson.Gson"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트 페이지</title>
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

/* 자리배치도 스타일 */
.sidenav {
	z-index: 1;
	display: none;
	height: 100%;
	width: 250px;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #0F4C82;
	overflow-x: hidden;
	padding-top: 20px;
	text-align: center; /* 테이블 가운데 정렬 */
}

.sidenav a {
	padding: 8px 8px 8px 16px;
	text-decoration: none;
	font-size: 20px;
	color: #818181;
	display: block;
}

.sidenav a:hover {
	color: #f1f1f1;
}

.sidenav table {
	margin-top: 10px;
	text-align: center;
}

.sidenav th {
	font-weight: bold;
	color: pink;
}

.sidenav td {
	color: white;
}

/* 테이블 스타일 */
.sidenav table {
	width: 100%; /* 테이블 가로 폭 100% */
	border-collapse: collapse; /* 테이블 간격 제거 */
}

.sidenav th, .sidenav td {
	padding: 8px;
	border-bottom: 1px solid #333; /* 아래쪽 테두리 추가 */
}

.area {
	/* 	margin-left: 250px; */
	margin-left: 0;
	padding-left: 100px;
	padding: 0px 10px;
	transition: margin-left 0.3s;
	align-items: center;
	text-align: center;
}

#seatArea {
	display: grid;
	grid-template-columns: repeat(8, 1fr);
	gap: 10px;
	justify-content: center;
}

.reservSeat {
	width: 100px;
	height: 100px;
	border: 1px solid #ccc;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 18px;
	background-color: #0F4C82;
}

.seat {
	width: 100px;
	height: 100px;
	border: 1px solid #ccc;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 18px;
}

.seat input {
	border: none;
	width: 80px;
	height: 20px;
	font-size: 14px;
}

.seatContainer {
	display: flex;
	flex-direction: column;
	align-items: center;
	text-align: center;
}

#screenBar {
	width: 800px;
	height: 27px;
	background-color: gray;
	font-size: 16px;
	font-weight: bold;
	color: white;
	margin: 0 auto; /* 수평 가운데 정렬을 위해 추가 */
	text-align: center; /* 텍스트를 수평 가운데 정렬을 위해 추가 */
	line-height: 27px; /* 텍스트 수직 가운데 정렬을 위해 추가 */
	margin-bottom: 30px;
}

/* 모달 스타일 */
#modal {
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
	display: none;
}

.modal-content {
	background-color: #fefefe;
	margin: 15% auto;
	padding: 50px;
	border: 1px solid #888;
	width: 50%;
	text-align: center;
}

.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

.button {
	background-color: lightgray;
	padding: 10px;
	margin: 5px;
	border: none;
	cursor: pointer;
}

.button.active {
	background-color: green;
}

* {
	/* color: #747474; */
	font-family: 'Cafe24Supermagic-Bold-v1.0';
}

.esc h1 span {
	font-family: "Abril Fatface", cursive;
	margin-left: 1.8em;
	font-size: 1.2em;
	color: #0F4C82;
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
	color: #098CFF;
}

#screenBar {
	background: #0F4C82;
}

#userInfo {
	font-size: 30px;
	color: black;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	color: black;
}

#showListBtn {
	position: relative;
	background: none;
	border: 2px solid #0F4C82;;
	border-radius: 150px;
	align-self: center;
	width: 150px;
	padding: 8px 16px;
	margin: 10px;
	color: #0F4C82;;
	font-weight: bold;
	cursor: pointer;
	transition: all 0.1s ease-in-out 0.1s;
}

.closeBtn {
	background: none;
	border: 2px solid #0F4C82;;
	border-radius: 150px;
	align-self: center;
	width: 100px;
	padding: 8px 16px;
	margin: 10px;
	color: #0F4C82;;
	font-weight: bold;
	cursor: pointer;
	transition: all 0.1s ease-in-out 0.1s;
}

.inMenuBtn {
	margin-top: 1em;
}

.inMenuEsc {
	color: white;
	margin-top: 40em;
}
</style>

</head>
<body>


	<div class="esc">
		<h1>
			<span>ESC</span>
		</h1>


	</div>

	<div class="sidenav">
		<div class="inMenuBtn">
			<button class="btn" id="infoBtn">학생 정보 입력</button>
			<button class="btn" id="manageBtn">학생 정보 관리</button>
			<button class="btn" id="placementBtn">학생 자리 배치</button>
			<button class="btn" id="inquiryBtn">자습 내역 조회</button>

			<button class="btn" id="to_logout">로그아웃</button>

		</div>
		<div class="inMenuEsc">
			<h1>
				<span>ESC</span>
			</h1>
		</div>
	</div>

	<%
	User us = (User) session.getAttribute("loginUser");
	String username = us.getUserName();
	String userno = us.getUserNo();
	%>

	<%
	Date date = new Date();
	SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
	String strdate = simpleDate.format(date);
	%>



	<div class="area">

		<div style="text-align: center; margin-bottom: 1.5em;">
			<span id="userInfo"><%=username%>관리자님 환영합니다.</span>
		</div>

		<div style="text-align: center; margin-bottom: 1.5em;">
			<button id="showListBtn">MENU</button>
		</div>

		<div id="screenBar">B O A R D</div>
		<div id="seatArea"></div>

	</div>



	<%
	List<Seat> seatList = (List<Seat>) request.getAttribute("seatList");
	String seatListJson = new Gson().toJson(seatList);
	%>


	<script>
	
		var seatList = <%=seatListJson%>;
		
		function getReservSeatNum(seatNum) {
		    const seat = seatList.find(function(seat){
		        return seat.seatNum == seatNum;
		    });

		    const seatReserv = seat ? seat.reservationConfirmation : 'N';
		    const userNo = seat ? seat.userNo : '';

		    return {
		        seatReserv,
		        userNo
		    };
		}

		
		let listVisible = false;

		$('#showListBtn').on('click', function() {

			listVisible = !listVisible;
			if (listVisible) {
				$('#showListBtn').text("MENU");
				// 표시
				$('.sidenav').toggle();
				$('.area').css('margin-left', '250px');
			} else {
				$('#showListBtn').text("MENU");
				// 숨김
				$('.sidenav').toggle();
				$('.area').css('margin-left', '0');
			}

		});

		// 좌석 영역
		const totalSeats = 30;
		const seatArea = document.getElementById("seatArea");

		// 좌석 생성 및 배치
		for (let i = 1; i <= totalSeats; i++) {
		    const seatContainer = document.createElement("div");
		    seatContainer.className = "seatContainer";

		    const seat = document.createElement("div");
		    //seat.className = "seat";

		    const userNoLabel = document.createElement("label");

		    const seatLabel = document.createElement("div");
		    seatLabel.className = "seat-label";
		    seatLabel.textContent = "좌석번호 " + i + "번";

		    const seatInfo = getReservSeatNum(i); // 수정된 부분

		    if (seatInfo.seatReserv == 'Y') {
		        seat.className = "reservSeat"; // 예약된 좌석
		        userNoLabel.textContent = seatInfo.userNo;
		    } else {
		        seat.className = "seat"; // 예약되지 않은 좌석
		        userNoLabel.textContent = seatInfo.userNo;
		    }

		    seat.appendChild(userNoLabel);
		    seatContainer.appendChild(seatLabel);
		    seatContainer.appendChild(seat);
		    seatArea.appendChild(seatContainer);
		    seat.style.borderColor = "black"; 
		    seat.style.borderWidth = "1px";
		    seatLabel.style.fontSize = "18px";

		}
		
		
// 		if (sslist[i - 1].getReservationComfirmation().equals("Y")) {
// 			seat.style.backgroundColor = "red";
// 		} else if (sslist[i - 1].getReservationComfirmation().equals("N")) {
// 			seat.style.backgroundColor = "white";
// 		}
// 		$('.saveBtn')
// 				.on(
// 						'click',
// 						function() {
// 							window.location.href = "${pageContext.request.contextPath}/m_assign.do";
// 						});

	
////////////////////////////////////////////////////////// 초기화 스크립트 /////////////////////////////////////////////////////////////

  // 아침 8시에 폼 초기화 함수 호출
        function resetForm() {
            document.getElementById('myForm').reset();
        }

        // 아침 8시에 폼 초기화 함수 실행
        function initFormReset() {
            const now = new Date();
            const targetTime = new Date(now);
            targetTime.setHours(8, 0, 0, 0); // 아침 8시로 설정

            // 현재 시간과 아침 8시를 비교하여 설정한 시간에 폼 초기화 함수 호출
            if (now >= targetTime) {
                resetForm(); // 초기화 함수 호출
            }

            // 아침 8시마다 폼 초기화 함수 호출
            setInterval(function() {
                resetForm();
            }, 24 * 60 * 60 * 1000); // 24시간(하루)마다 실행 (24 * 60 * 60 * 1000 밀리초)
        }

        // 페이지 로딩 시 아침 8시에 폼 초기화 함수 실행
        window.onload = initFormReset;
        
///////////////////////////////////////////////////////////// 버튼 스크립트 ///////////////////////////////////////////////////////////

   // 학생정보입력으로~
   $('#infoBtn').on('click', function(){
	   window.location.href = "m_insert_form.do";
   });
   
   $('#manageBtn').on('click', function(){
	   window.location.href = "m_list.do";
   });
   
   $('#placementBtn').on('click', function(){
	   window.location.href = "m_position_form.do";
   });
 
   $('#inquiryBtn').on('click', function(){
	   window.location.href = "m_stats.do";
   });
   
   $('#to_logout').on('click', function(){
	   window.location.href = "logout.do";
   });
   
   
    	
    	
    	
    	
    	
   ////////////////////////////////            여기까지            ////////////////////////////////////
   
   
 
//     	$("#to_student_position").on("click", function (){
//   	      window.location.href = "${pageContext.request.contextPath}/student_position.do"
//   	   });
    	
//     	$("#to_student_position2").on("click", function (){
//     	      window.location.href = "${pageContext.request.contextPath}/student_position2.do"
//     	   });

	</script>
</body>
</html>