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

@import "compass/css3";

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
	color: #000000;
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
	color: #FFFF00;
	text-align: center;
	font-size: 14px;
}

.home h1 span {
	color: #FFFF59;
	display: block;
	font-size: 3.5em;
	font-family: "Abril Fatface", cursive;
}
/* .home p {
  margin-bottom:  20px;
  font-size: 1.5em;
  color: #ffffff; */
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
	margin-top: 20px;
	color: white;
	font-weight: bold;
	cursor: pointer;
	transition: all 0.1s ease-in-out 0.1s;
}

.btn:hover {
	background: white;
	color: #098CFF;
}

/* .bars-style {
  color: rgb(249, 63, 76);
  cursor: pointer;
  font-size: 16px;
} */

/* @media (max-width: 1023px) {
  .main {
    width: 100%;
    height: 100%;
  }
  .home, .signup-left { border-radius: 0; }
  .form-area {
    left: 35%;
    width: 30%;
    height: 70%;
  }
}
@media (max-width: 768px) {
  .form-area {
    left: 20%;
    width: 60%;
  }
  .wc_message {
    display: none; 
    opacity: 0;
    transition: opacity .1s;
  }
}

@media (max-width: 375px) {
  .form-area {
    left: 10%;
    width: 80%;
  }
} */
.modal {
	/* 모달 창 스타일 설정 */
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	opacity: 0;
	visibility: hidden;
	transform: scale(1.1);
	transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform
		0.25s;
	font-size: 20px;
}

.modal-content {
	/* 모달 내용 스타일 설정 */
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: white;
	padding: 1rem 1.5rem;
	width: 500px;
	height: 350px;
	border-radius: 0.5rem;
}

.show-modal {
	/* 모달 표시 스타일 설정 */
	opacity: 1;
	visibility: visible;
	transform: scale(1.0);
	transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

p {
	margin-top: 10px;
}

.container {
	width: 100%;
}

.modal-btn-box {
	width: 100%;
	text-align: center;
}

.modal-btn-box button {
	display: inline-block;
	width: 150px;
	height: 50px;
	background-color: #ffffff;
	border: 1px solid #e1e1e1;
	cursor: pointer;
	padding-top: 8px;
}

.popup-wrap {
	background-color: rgba(0, 0, 0, .3);
	justify-content: center;
	align-items: center;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	display: none;
	padding: 15px;
}

.popup {
	width: 100%;
	max-width: 400px;
	background-color: #ffffff;
	border-radius: 10px;
	overflow: hidden;
	background-color: #264db5;
	box-shadow: 5px 10px 10px 1px rgba(0, 0, 0, .3);
}

.popup-head {
	width: 100%;
	height: 50px;
	display: flex;
	align-items: center;
	justify-content: center;
}

.head-title {
	font-size: 38px;
	font-style: italic;
	font-weight: 700;
	text-align: center;
	color: #ffffff;
}

.popup-body {
	width: 100%;
	background-color: #ffffff;
}

.body-content {
	width: 100%;
	padding: 30px;
}

.body-titlebox {
	text-align: center;
	width: 100%;
	height: 40px;
	margin-bottom: 10px;
}

.body-contentbox {
	word-break: break-word;
	overflow-y: auto;
	min-height: 100px;
	max-height: 200px;
	color: #ffffff;
}

.popup-foot {
	width: 100%;
	height: 50px;
}

.pop-btn {
	display: inline-flex;
	width: 50%;
	height: 100%;
	float: left;
	justify-content: center;
	align-items: center;
	color: #ffffff;
	cursor: pointer;
}

.pop-btn.confirm {
	border-right: 1px solid #3b5fbf;
}

table {
	width: auto;
	border-collapse: collapse;
	text-align: center;
	border-radius: 10px;
}

td, th {
	font-size: 15pt;
	border: 1px solid #000000;
	height: 30px;
	padding: 10px;
	width: 200px;
}

th {
	background-color: #ffffff;
	color: #000000;
	font-family: Georgia;
}

tr td {
	color: #000000;
	background-color: #ffffff;
}

.table-container {
	max-height: 300px; /* 원하는 높이로 설정하세요. */
	overflow-y: scroll; /* 세로 스크롤 활성화 */
}

#aaa {
	border: 14px solid black;
	border-radius: 10px;
	width: 399px;
	height: 400px;
}

.custom-text {
	font-family: 'Cafe24Supermagic-Bold-v1.0', sans-serif;
	/* 해당 폰트 및 대체 폰트 목록 */
	margin-top: 30px;
}

#titleESC {
	margin-bottom: -60px;
}

#listStudent {
	font-size: 30px;
	margin-bottom: 20px;
	text-align: center;
	color: #ffffff;
}

#userInfoId {
	font-size: 40px;
}

#userInfoNameInput, #userInfoGenderInput, #userInfodateOfBirthInput,
	#userInfoaddressInput, #totalStudyTime, #studyRank {
	font-size: 20px;
	font-family: 'Cafe24Supermagic-Bold-v1.0', sans-serif;
}
</style>
</head>
<body>
	<main class="main">
		<section class="home">
			<div style="margin-top: 10px;">
				<h1>
					<span id="titleESC">ESC</span>
				</h1>
			</div>
			<div class="custom-text">
				<p id="listStudent">교육생 리스트</p>
				<div class="table-container" id="aaa">
					<table border="1" id="studentList">
						<tr>
							<th>번호</th>
							<th>이름</th>
							<th>삭제하기</th>
						</tr>
						<c:forEach var="ab" items="${userlist}" varStatus="status">
							<tr id="${ab.getUserNo()}">
								<td class="modal-open">${ab.getUserNo()}</td>
								<td>${ab.getUserName()}</td>
								<td>
									<button id="${ab.getUserNo()}"
										onclick="delcheck('${ab.getUserNo()}')">삭제</button>
								</td>
							</tr>
						</c:forEach>
						</div>
					</table>
				</div>
				<button class="btn" id="homeBtn"
					style="margin-bottom: 100px; margin-left: 120px;">돌아가기</button>

				<div class="container">

					<div class="popup-wrap" id="popup">
						<div class="popup">
							<div class="popup-head">
								<span class="head-title">교육생 인적사항</span>
							</div>
							<div class="popup-body">
								<div class="body-content">
									<div class="body-titlebox">
										<div style="margin-bottom: 20px;">
											<p style="font-size: 40px;">
												학번 : <span id="userInfoId"></span>
											</p>
										</div>
									</div>
									<div class="body-contentbox">

										<p style="font-size: 25px;">
											이름 : <input type="text" id="userInfoNameInput">
										</p>
										<p style="font-size: 25px;">
											성별 : <input type="text" id="userInfoGenderInput">
										</p>
										<p style="font-size: 25px;">
											생일 : <input type="text" id="userInfodateOfBirthInput">
										</p>
										<p style="font-size: 25px;">
											주소 : <input type="text" id="userInfoaddressInput">
										</p>
										<p style="font-size: 25px;">
											총 자습 시간 : <span id="totalStudyTime"></span>
										</p>
										<p style="font-size: 25px;">
											전체 자습량 순위 : <span id="studyRank"></span>
										</p>



									</div>

								</div>
							</div>
							<div class="popup-foot">
								<span class="pop-btn confirm" id="confirm"
									style="font-size: 20px;">수정완료</span> <span
									class="pop-btn close" id="close" style="font-size: 20px;">창
									닫기</span>
							</div>
						</div>
					</div>
				</div>
		</section>
	</main>
	<script>
		// 매니저홈화면으로
		$('#homeBtn').on('click', function() {
			window.location.href = "m_main.do";
		});

		$('.numBtn').on('click', function() {
			alert('클릭되었습니다')
		});

		function delcheck(userNo) {
			result = confirm("정말로 삭제하시겠습니까 ?");

			if (result == true) {
				alert("삭제되었습니다.");
				window.location.href = "m_delete.do?userNo=" + userNo;
			} else {
				alert("삭제에 실패하였습니다.")
			}
		}

/* 		// 총 자습 시간을 나타내는 함수 보험
	       function updateTotalStudyTime(userNo) {
	          $.ajax({
	              url: 'getTotalStudyTime.do?userNo=' + userNo, // API 엔드포인트를 지정합니다.
	              type: 'GET',
	              dataType: 'json',
	              success: function(data) {
	                  if (data.totalStudyTime) {
	                      // 총 자습 시간을 모달 팝업에 표시합니다.
	                      $('#totalStudyTime').text(data.totalStudyTime + ' 시간');
	                  } else {
	                      // 총 자습 시간이 없는 경우 처리
	                      $('#totalStudyTime').text('누적 시간이 없어요^_^');
	                  }
	              },
	              error: function() {
	                  // 에러 처리
	                  $('#totalStudyTime').text('총 자습 시간을 가져오는데 실패했습니다.');
	              }
	          });
	      } */
		
		
	       // 자습 시간의 랭킹 나타내는 함수
	       function updateTotalStudyRank(userNo) {
	          $.ajax({
	             url : '${pageContext.request.contextPath}/getTotalStudyRank',
	             method: 'POST',
	                data: {userNo: userNo}, 
	             success : function(data) {
	                if (data.totalReservationTime) {
	                   // 총 자습 시간을 모달 팝업에 표시합니다.
	                   $('#totalStudyTime').text(data.totalReservationTime + ' 시간');
	                   $('#studyRank').text(data.rankReservationTime + ' 등');
	                } else {
	                   // 총 자습 시간이 없는 경우 처리
	                   $('#totalStudyTime').text('기록이 없습니다.');
	                   $('#totalStudyRank').text('워라벨 지향');
	                }
	             },
	             error : function() {
	                // 에러 처리
	                $('#totalStudyRank').text('랭킹을 불러올 수 없습니다.');
	             }
	          });
	       }


		$(function() {
			$("#confirm").click(function() {
				console.log('클릭됨');
				modalClose();
				//컨펌 이벤트 처리
			});

			$(".modal-open").click(
					function() {
						var userNo = $(this).closest('tr').find(
								'td:first-child').text();
						loadUserInfo(userNo);

						// 모달 팝업이 열릴 때 총 자습 시간을 업데이트합니다.
						//updateTotalStudyTime(userNo);
					     updateTotalStudyRank(userNo);
						$("#popup").css('display', 'flex').hide().fadeIn();
					});

			$("#close").click(function() {
				modalClose();
			});
			function modalClose() {
				$("#popup").fadeOut();
			}
		});

		// 유저 상세페이지 - 모달에 나타나는 내용
		function loadUserInfo(userNo) {
			$.ajax({
				url : 'getUserInfo.do?userNo=' + userNo,
				type : 'POST',
				dataType : 'json',
				success : function(data) {
					$("#userInfoId").text(data.userNo);
					$("#userInfoNameInput").val(data.userName);
					$("#userInfoGenderInput").val(data.gender);
					$("#userInfodateOfBirthInput").val(data.dateOfBirth);
					$("#userInfoaddressInput").val(data.address);

					loadTotalStudyRank(userNo);
				},
				error : function() {
					alert('사용자 정보를 가져오는데 실패했습니다.');
				}
			});
		}

		// 팝업에서 수정버튼을 누르면 매서드실행
		$("#confirm").click(function() {
			var userNo = $("#userInfoId").text();
			var userName = $("#userInfoNameInput").val();
			var gender = $("#userInfoGenderInput").val();
			var dateOfBirth = $("#userInfodateOfBirthInput").val();
			var address = $("#userInfoaddressInput").val();

			$.ajax({
				url : 'updateUserInfo.do',
				type : 'POST',
				dataType : 'json',
				data : {
					userNo : userNo,
					userName : userName,
					gender : gender,
					dateOfBirth : dateOfBirth,
					address : address
				},
				success : function(response) {
					if (response.success) {
						alert('사용자 정보가 성공적으로 수정되었습니다.');
						// 수정된 정보를 팝업에 표시
						$("#userInfoName").text(userName);
						// 팝업 닫기

						// 사용자 목록 업데이트
						refreshUserData();
					} else {
						alert('사용자 정보 수정에 실패했습니다.');
					}
				},
				error : function() {
					alert('사용자 정보 수정에 실패했습니다.');
				}
			});
		});

		// 수정완료를 눌렀을 때 보여지는 화면에 바뀐 리스트 출력
		function refreshUserData() {
			$.ajax({
				url : 'getUserData.do',
				type : 'POST',
				dataType : 'json',
				success : function(data) {
					// 기존 헤더를 유지한 상태에서 테이블 내용을 업데이트
					var table = $("#studentList");
					table.find("tr:gt(0)").remove(); // 첫 번째 행(헤더)를 제외한 모든 행 삭제

					// 새로운 학생 목록 추가
					$.each(data, function(index, student) {
						var rowHtml = '<tr id="' + student.userNo + '">';
						rowHtml += '<td class="modal-open">' + student.userNo
								+ '</td>';
						rowHtml += '<td>' + student.userName + '</td>';
						rowHtml += '<td><button id="' + student.userNo
								+ '" onclick="delcheck(\'' + student.userNo
								+ '\')">퇴소</button></td>';
						rowHtml += '</tr>';
						table.append(rowHtml); // 새로운 행을 테이블에 추가
					});

					$(".modal-open").click(
							function() {
								var userNo = $(this).closest('tr').find(
										'td:first-child').text();
								loadUserInfo(userNo);
								$("#popup").css('display', 'flex').hide()
										.fadeIn();
							});
				},
				error : function() {
					alert('데이터 업데이트에 실패했습니다.');
				}
			});
		}
	</script>
</body>
</html>