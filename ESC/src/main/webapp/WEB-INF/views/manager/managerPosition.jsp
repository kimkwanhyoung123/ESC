<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트 페이지</title>
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
	/*    margin-left: 250px; */
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

#saveBtn {
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

#homeBtn {
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

/* 모달창 캐러셀 */
* {
	box-sizing: border-box;
}

.slider {
	width: 300px;
	text-align: center;
	overflow: hidden;
}

.slides {
	display: flex;
	overflow-x: auto;
	scroll-snap-type: x mandatory;
	scroll-behavior: smooth;
	-webkit-overflow-scrolling: touch;

	/*
  scroll-snap-points-x: repeat(300px);
  scroll-snap-type: mandatory;
  */
}

.slides::-webkit-scrollbar {
	width: 10px;
	height: 10px;
}

.slides::-webkit-scrollbar-thumb {
	background: black;
	border-radius: 10px;
}

.slides::-webkit-scrollbar-track {
	background: transparent;
}

.slides>div {
	scroll-snap-align: start;
	flex-shrink: 0;
	width: 300px;
	height: 300px;
	margin-right: 50px;
	border-radius: 10px;
	background: #eee;
	transform-origin: center center;
	transform: scale(1);
	transition: transform 0.5s;
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 100px;
}

.slides>div:target {
	/*   transform: scale(0.8); */
	
}

.author-info {
	background: rgba(0, 0, 0, 0.75);
	color: white;
	padding: 0.75rem;
	text-align: center;
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
	margin: 0;
}

.author-info a {
	color: white;
}

img {
	object-fit: cover;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

.slider>a {
	display: inline-flex;
	width: 1.5rem;
	height: 1.5rem;
	background: white;
	text-decoration: none;
	align-items: center;
	justify-content: center;
	border-radius: 50%;
	margin: 0 0 0.5rem 0;
	position: relative;
}

.slider>a:active {
	top: 1px;
}

.slider>a:focus {
	background: #000;
}

/* Don't need button navigation */
@
supports (scroll-snap-type) { .slider > a { display:none;
	
}
}
/* html, body {
   height: 100%;
   overflow: hidden;
}

body {
   display: flex;
   align-items: center;
   justify-content: center;
   font-family: 'Ropa Sans', sans-serif;
} */
</style>

</head>

<body>
	<main class="main">
		<section class="home">

			<form method="post" action="m_assign.do">
				<div class="sidenav">
					<table>
						<tr>
							<th>학번</th>
							<th>이름</th>
						</tr>
						<c:forEach items="${userList}" var="user">

							<tr>
								<td>${user.userNo}</td>
								<td>${user.userName}</td>
							</tr>
						</c:forEach>
					</table>
				</div>


				<div class="area">
					<button id="showListBtn" type="button">학생 명단 보기</button>
					<div id="screenBar">S C R E E N</div>
					<div id="seatArea"></div>
					<button type="submit" class="saveBtn" id="saveBtn">저장</button>
					<button class="btnBack btn-in" type="button" id="homeBtn">돌아가기</button>
				</div>
			</form>
		</section>
	</main>


	<script>
	
	$('#homeBtn').on('click', function() {
        window.location.href = "m_main.do";
     });
	
		let listVisible = false;

		      $('#showListBtn').on('click', function() {

		         listVisible = !listVisible;
		         if (listVisible) {
		            $('#showListBtn').text("학생 명단 닫기");
		            // 표시
		            $('.sidenav').toggle();
		            $('.area').css('margin-left', '250px');
		         } else {
		            $('#showListBtn').text("학생 명단 보기");
		            // 숨김
		            $('.sidenav').toggle();
		            $('.area').css('margin-left', '0');
		         }

		      });

		// 좌석 영역
		const totalSeats = 30;
		const seatArea = document.getElementById("seatArea");

	    var seatsJson = `${requestScope.seatsJson}`; // JSON 데이터를 문자열로 가져옴
   	    var seats = JSON.parse(seatsJson); // JSON 문자열을 JavaScript 객체로 파싱
    	console.log(seats);
   	    
   	    function getReservSeatNum(seatNum) {
   	    	const seat = seats.find(function(seat){
   	    		return seat.seatNum == seatNum;
   	    	})
   	    	
   	    	const seatReserv = seat ? seat.reservationConfirmation : 'N';
   	    	const userNo = seat ? seat.userNo : '';
   	    	return{
   	    		seatReserv,userNo
   	    	}
   	    }
		
		// 좌석 생성 및 배치
	/* 	var seats = <c:out value="${userList}" />; */
	/* 	var seats = "${userList}";  */

	
		for (let i = 1; i <= totalSeats; i++) {
		    const seatContainer = document.createElement("div");
		    seatContainer.className = "seatContainer";

		    const seat = document.createElement("div");
		    seat.className = "seat";

		    const inputSeatNum = document.createElement("input");
		    inputSeatNum.type = "hidden";
		    inputSeatNum.name = "seatNum" + i;
		    inputSeatNum.value = i;

		    const inputUserNo = document.createElement("input");
		    inputUserNo.type = "text";
		    inputUserNo.placeholder = "학번";
		    inputUserNo.className = "userNo";
		    inputUserNo.name = "userNo" + i;
		    inputUserNo.required = true;
		    

		    const seatLabel = document.createElement("div");
		    seatLabel.className = "seat-label";
		    seatLabel.textContent = "좌석번호 " + i + "번";

		    const seatInfo = getReservSeatNum(i); // 수정된 부분

	          if (seatInfo.seatReserv == 'Y') {
	              inputUserNo.value = seatInfo.userNo;
	          } else {
	              inputUserNo.value = seatInfo.userNo;
	          }
		    
		    seat.appendChild(inputSeatNum);
		    seat.appendChild(inputUserNo);
		    seatContainer.appendChild(seatLabel);
		    seatContainer.appendChild(seat);
		    seatArea.appendChild(seatContainer);
		}
	



	</script>
</body>
</html>

