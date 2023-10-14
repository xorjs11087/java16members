<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/Page14_Screen.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
	$(function(){
		// 목록
		function commentList() {
			$.ajax({
				url: '${pageContext.servletContext.contextPath}/list',
				data: {name:${vo.sportic_member_nickname}},
				type: 'GET',
				success: function(result) {
					console.log(result);
					
					var tag = "";	// 댓글목록 태그(수정, 삭제)
					$(result).each(function(i, vo) {
						tag += "<li><div><b>"+vo.sportic_member_nickname+"</b>";
						tag += "<p>"+vo.coment+"</p></div>"; // 댓글 내용
						tag += "</li>";
					});
					console.log(tag);
					$("#replyList").html(tag);
					
				}, error: function(e) {
					console.log(e.responseText);
				}
			});	
		}
		$("#commentForm").submit(function(){
			// 댓글 등록
			if($("comment").val() == ""){
				alert("댓글을 입력 후 등록하세요.");
				return false;
			}
			
			var params = $(this).serialize();

			$.ajax({
				url : "/write",
				data : params,
				type : "POST",
				success : function(r){
					console.log(r)
					$("#comment").val("");
				},
				error : function(e){
					console.log(e.responseText);
				}
			});
		});
		commentList();
	});
</script>
</head>
<body>
	<input type="text" value="${vo.team_intro_title }" class="top">
	<input type="hidden" name="write_num" value="${vo.write_num }"/>
	<div class="main">

		<div class="invisible">

			<div class="indiv">

				<p>지역</p>
				<p>${vo.recruit_region }</p>
			</div>

			<div class="indiv">
				<p>종목</p>
				<p class="secondp">${vo.sport }</p>
			</div>

			<div class="indiv">
				<p>모집구분</p>
				<p class="secondp">${vo.recruit_position }</p>
			</div>

			<div class="indiv">
				<p>모집인원</p>
				<p class="secondp">${vo.recruit_num }</p>
			</div>

			<div class="indiv">
				<p>경력</p>
				<p class="secondp">${vo.recruit_career }</p>
			</div>

			<div class="indiv">
				<p>모집마감</p>
				<p class="secondp">${vo.recruit_date }</p>
			</div>

			<div class="indiv">
				<p>SNS</p>
				<p>${vo.sns }</p>
			</div>

			<div class="buttondiv">
				<button class="button1">보관하기</button>
				<button class="button2">참가신청</button>
			</div>

		</div>
		<hr />

		<input type="text" value="${vo.team_intro }" class="input1">
		<hr />
		
		<div>댓글 목록</div>
		<ul class="input2" id="input2">
		</ul>

		<form method="post" id="commentForm">
			<div>
				<input type="hidden" name="no" value="${vo.write_num }"/>
				<input type="text" placeholder="댓글을 작성해 보세요." class="input3" name="comment" id="comment">
				<input type="submit" value="등록" class="lastbutton">
			</div>
		</form>
		

	</div>
</body>
</html>