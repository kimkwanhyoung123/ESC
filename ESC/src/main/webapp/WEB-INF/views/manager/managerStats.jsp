<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Reservation Page</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- CDN 을 사용한 jQuery UI 사용 -->
<link rel="stylesheet"
   href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="./jquery-ui-1.12.1/datepicker-ko.js"></script>

</head>
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

#calendar {
	display: block;
}

#month {
	display: none;
}

<!--
테이블 css적용 구간 -->body {
	background: #fafafa
		url(https://jackrugile.com/images/misc/noise-diagonal.png);
	color: #444;
	font: 100%/30px 'Helvetica Neue', helvetica, arial, sans-serif;
	text-shadow: 0 1px 0 #fff;
}

strong {
	font-weight: bold;
}

em {
	font-style: italic;
}

table {
	background: #f5f5f5;
	border-collapse: separate;
	box-shadow: inset 0 1px 0 #fff;
	font-size: 12px;
	line-height: 24px;
	/*    margin: 30px auto; */
	text-align: left;
	width: 800px;
}

th {
	background: url(https://jackrugile.com/images/misc/noise-diagonal.png),
		linear-gradient(#777, #444);
	border-left: 1px solid #555;
	border-right: 1px solid #777;
	border-top: 1px solid #555;
	border-bottom: 1px solid #333;
	box-shadow: inset 0 1px 0 #999;
	color: #fff;
	font-weight: bold;
	padding: 10px 15px;
	position: relative;
	text-shadow: 0 1px 0 #000;
}

th:after {
	background: linear-gradient(rgba(255, 255, 255, 0),
		rgba(255, 255, 255, .08));
	content: '';
	display: block;
	height: 25%;
	left: 0;
	margin: 1px 0 0 0;
	position: absolute;
	top: 25%;
	width: 100%;
}

th:first-child {
	border-left: 1px solid #777;
	box-shadow: inset 1px 1px 0 #999;
}

th:last-child {
	box-shadow: inset -1px 1px 0 #999;
}

td {
	border-right: 1px solid #fff;
	border-left: 1px solid #e8e8e8;
	border-top: 1px solid #fff;
	border-bottom: 1px solid #e8e8e8;
	padding: 10px 15px;
	position: relative;
	transition: all 300ms;
}

td:first-child {
	box-shadow: inset 1px 0 0 #fff;
}

td:last-child {
	border-right: 1px solid #e8e8e8;
	box-shadow: inset -1px 0 0 #fff;
}

tr {
	background: url(https://jackrugile.com/images/misc/noise-diagonal.png);
}

tr:nth-child(odd) td {
	background: #f1f1f1
		url(https://jackrugile.com/images/misc/noise-diagonal.png);
}

tr:last-of-type td {
	box-shadow: inset 0 -1px 0 #fff;
}

tr:last-of-type td:first-child {
	box-shadow: inset 1px -1px 0 #fff;
}

tr:last-of-type td:last-child {
	box-shadow: inset -1px -1px 0 #fff;
}

tbody:hover td {
	color: transparent;
	text-shadow: 0 0 3px #aaa;
}

tbody:hover tr:hover td {
	color: #444;
	text-shadow: 0 1px 0 #fff;
}

<!--
여기까지 -->.accodient-box {
	overflow-y: scroll;
}

.accodient-box::-webkit-scrollbar {
	width: 10px; /* 스크롤바의 너비 */
}

.accodient-box::-webkit-scrollbar-thumb {
	height: 30%; /* 스크롤바의 길이 */
	background: #848484; /* 스크롤바의 색상 */
	border-radius: 10px;
}

.accodient-box::-webkit-scrollbar-track {
	background: #84848447; /*스크롤바 뒷 배경 색상*/
}

#result {
	overflow-y: scroll;
	max-height: 400px;
}

#aaa {
	display: flex;
	margin-bottom: 10px;
}

#type, #calendar {
	margin-right: 20px; /* 요소들 간의 간격을 조절할 수 있습니다. */
	margin-bottom: 20px;
}

#homeBtn {
	position: relative;
	background: none;
	border: 2px solid #FFFFFF;
	border-radius: 150px;
	align-self: center;
	width: 150px;
	padding: 8px 16px;
	margin: 10px;
	color: #FFFFFF;
	font-weight: bold;
	cursor: pointer;
	transition: all 0.1s ease-in-out 0.1s;
}

#homeBtn:hover {
	background: white;
	color: #098CFF;
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
</style>
<body>
   <main class="main">
      <section class="home">
         <p style="font-size: 60px; color:yellow;">자습 내역 조회</p>
         <p style="font-size: 20px;">일자별 또는 월별로 조회할 수 있습니다</p> 
         <div id="aaa">
            <select id="type">
               <option value="daily">일별</option>
               <option value="monthly">월별</option>
            </select>
       
      
               <div id="calendar">
                  <input type="text" name="date" id="date" size="12" /> 
                  <input type="button" value="날짜 선택" onclick="$('#date').datepicker('show');" />
               </div>
       </div>
         <div id="month">
            <select id="selectedMonth">
               <option value="0"></option>
               <option value="1">1월</option>
               <option value="2">2월</option>
               <option value="3">3월</option>
               <option value="4">4월</option>
               <option value="5">5월</option>
               <option value="6">6월</option>
               <option value="7">7월</option>
               <option value="8">8월</option>
               <option value="9">9월</option>
               <option value="10">10월</option>
               <option value="11">11월</option>
               <option value="12">12월</option>
            </select>
         </div>

         <div id="result">
            <table class="reservation-table">
               <thead>
                  <tr><th>날짜</th><th>학번</th><th>이름</th><th>시간</th></tr>
               </thead>
               <tbody>
                  <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
                  <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
                  <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
                  <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
               </tbody>
            </table>
         </div>
<button class="btnBack btn-in" type="button" id="homeBtn" style="margin-top:30px;">돌아가기</button>
      </section>
   </main>


   <script>
   

	$('#homeBtn').on('click', function() {
       window.location.href = "m_main.do";
    });
	
    $(function () {
        $("#date").datepicker({
            changeYear: true,
            changeMonth: true,
            dateFormat: 'yy/mm/dd',
            monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            dayNamesMin: ['일', '월', '화', '수', '목', '금', '토']
        });
    });

    $('#type').on("change", function () {
//         $('#result').empty();
        var type = $('#type').val();
        if (type == 'daily') {
            $('#calendar').css('display', 'block');
            $('#month').css('display', 'none');
        } else {
            $('#calendar').css('display', 'none');
            $('#month').css('display', 'block');
        }
    });
    
    $('#date').on("change", function(){
        var date = $('#date').val();
        if(date != null) {
            $.ajax({
                url: '${pageContext.request.contextPath}/date_list',
                method: 'POST',
                data: {reservation_date: date}, 
                success: function(data){
                   var table = $('<table>').addClass('reservation-table');
                    var thead = $('<thead>').html('<tr><th>날짜</th><th>학번</th><th>이름</th><th>시간</th></tr>');
                    var tbody = $('<tbody>');

                    if (data.length === 0) {
                        for (var i = 0; i < 4; i++) { // 빈 데이터를 4개의 행으로 구성
                            var tr = $('<tr>');
                            for (var j = 0; j < 4; j++) {
                                var td = $('<td>').html('&nbsp;');
                                tr.append(td);
                            }
                            tbody.append(tr);
                        }
                    } else {
                        for (var i = 0; i < data.length; i++) {
                            var reservation = data[i];
                            var tr = $('<tr>');
                            var dateInfo = $('<td>').text(reservation.reservationDate);
                            var userNoInfo = $('<td>').text(reservation.userNo);
                            var userNameInfo = $('<td>').text(reservation.userName);
                            var timeInfo = $('<td>').text(reservation.reservationTime);

                            tr.append(dateInfo, userNoInfo, userNameInfo, timeInfo);
                            tbody.append(tr);
                        }
                    }

                    table.append(thead, tbody);
                    $('#result').html(table);
                 
                },
                error: function (xhr, status, error) {
                    console.error(xhr.responseText);
                }
            });
        }
    });
    
    $('#selectedMonth').on("change", function(){
        $('#result').empty();
       var month = $('#selectedMonth').val();
       $.ajax({
          url: '${pageContext.request.contextPath}/month_list',
            method: 'POST',
            data: {month: month}, 
            success: function(data){
//                 $('#result').empty();
//                 for (var i = 0; i < data.length; i++) {
//                     var reservation = data[i];
//                     var reservationInfo = $('<div>').addClass('reservation-info');
//                     var dateInfo = $('<div>').addClass('date-info').text('날짜: ' + reservation.reservationDate);
//                     var userNoInfo = $('<div>').addClass('user-no-info').text('학번: ' + reservation.userNo);
//                     var userNameInfo = $('<div>').addClass('user-name-info').text('이름: ' + reservation.userName);
//                     var timeInfo = $('<div>').addClass('time-info').text('시간: ' + reservation.reservationTime);
//                     reservationInfo.append(dateInfo, userNoInfo, userNameInfo, timeInfo);
//                     $('#result').append(reservationInfo);
//                 }
//             },
//             error: function (xhr, status, error) {
//                 console.error(xhr.responseText);
//             }
            
            var table = $('<table>').addClass('reservation-table');
            var thead = $('<thead>').html('<tr><th>날짜</th><th>학번</th><th>이름</th><th>시간</th></tr>');
            var tbody = $('<tbody>');

            if (data.length === 0) {
              for (var i = 0; i < 4; i++) { // 빈 데이터를 4개의 행으로 구성
                   var tr = $('<tr>');
                 for (var j = 0; j < 4; j++) {
                         var td = $('<td>').html('&nbsp;');
                         tr.append(td);
                     }
                     tbody.append(tr);
                 }
            } else {
                for (var i = 0; i < data.length; i++) {
                    var reservation = data[i];
                    var tr = $('<tr>');
                    var dateInfo = $('<td>').text(reservation.reservationDate);
                    var userNoInfo = $('<td>').text(reservation.userNo);
                    var userNameInfo = $('<td>').text(reservation.userName);
                    var timeInfo = $('<td>').text(reservation.reservationTime);

                    tr.append(dateInfo, userNoInfo, userNameInfo, timeInfo);
                    tbody.append(tr);
                }
            }

            table.append(thead, tbody);
            $('#result').html(table);
           
        },
        error: function (xhr, status, error) {
            console.error(xhr.responseText);
        }
        });
    });
    
    
    </script>
</body>
</html>