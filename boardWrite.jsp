<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet"> -->

	<title>글쓰기</title>
	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script> -->
	<link rel="stylesheet" href="../css/writecss.css">
</head>

<body>
	<!-- <img id="main-logo" src="../01. main/logo.png"> -->
	<form method="post" action="${pageContext.servletContext.contextPath }/board/writeOk">
		<div class="container">
			<br>
			<h3 id="intro">팀의 기본 정보를 입력해주세요.</h3>
			<div class="box_up">
				<div class="select-area">
					<label for="area" class="label">지역</label>
					<br>
					<select id="area" name="recruit_region">
						<option>-선택-</option>
						<option>서울</option>
						<option>경기</option>
						<option>인천</option>
						<option>강원</option>
						<option>충청</option>
						<option>경북</option>
						<option>경남</option>
						<option>부산</option>
						<option>대구</option>
						<option>전북</option>
						<option>전남</option>
						<option>광주</option>
					</select>
				</div>

				<div class="select-area">
					<label for="play" class="label">종목</label>
					<br>
					<select id="play" name="sport">
						<option>-선택-</option>
						<option>축구</option>
						<option>야구</option>
						<option>농구</option>
						<option>배드민턴</option>
						<option>기타</option>
					</select>
				</div>

				<div class="select-area">
					<label for="division" class="label">모집구분</label>
					<br>
					<select id="division" name="recruit_position">
						<option>-선택-</option>
						<option>팀모집</option>
						<option>팀원모집</option>
						<option>스태프모집</option>
						<option>감독모집</option>
					</select>
				</div>

				<div class="select-area">
					<label for="number" class="label">모집인원</label>
					<br>
					<select id="number" name="recruit_num">
						<option>-선택-</option>
						<option>1명</option>
						<option>2명</option>
						<option>3명</option>
						<option>4명</option>
						<option>5명</option>
						<option>6명</option>
						<option>7명</option>
						<option>8명</option>
						<option>9명</option>
						<option>10명 이상</option>
					</select>
				</div>

				<div class="select-area">
					<label for="career" class="label">경력</label>
					<br>
					<select id="career" name="recruit_career">
						<option>-선택-</option>
						<option>초보</option>
						<option>중급자</option>
						<option>고수</option>
						<option>고인물</option>
						<option>다이김</option>
					</select>
				</div>

				<div class="select-area">
					<label for="date" class="label">모집마감일</label>
					<br>
					<input type="date" id="date" name="recruit_date"/>
				</div>
			</div>

			<!-- <div style="clear: both"></div> -->

			<div id="sns">
				<label for="sns" class="snsLabel"> 연락 가능한 SNS 주소</label>
				<input type="text" id="addr" name="sns" placeholder="https:// ">
			</div>
			<br>


			<h3 id="intro2">팀에 대해 소개해주세요.</h3>

			<div class="box_down">
				<input type="text" id="a1" name="team_intro_title" placeholder="제목(20자 이내)" />
				<input type="text" id="a2" name="team_intro" placeholder="팀에 대해 소개해주세요." />
			</div>
			<div class="cancelRegister">
				<button id="cancel" type="reset">취소</button>
				<button id="register" type="submit">등록</button>
			</div>
		</div>
	</form>

</body>

</html>