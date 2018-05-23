<%@page import="member.model.service.MemberService"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<meta http-equiv="X-UA-Compatible" content="ie=edge">
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
			<title>아이디 중복 체크</title>
		</head>

		<style>
			* {
				text-align: center;
			}
		</style>

		<body>
			<h3>
				중복 확인할 아이디 입력
				<input type="text" name="checkId" id="checkId">
				<button onclick="check();">중복체크</button>
			</h3>
			<div id="message"></div>
		</body>

		<script>
			function check() {
				var checkId = document.getElementById("checkId").value;
				window.location.href = "idCheck.jsp?checkId=" + checkId;
			}

			window.onload = function () {
				<%String checkId = request.getParameter("checkId");
			if (checkId != null) {
				boolean isResult = new MemberService().idCheck(checkId);
				if (isResult == true) {%>
				$('#message').css('color', 'red').css('font-size', '14px').html("이미 사용 중인 아이디 입니다.");
				<%} else {%>
				var useId = window.confirm("사용가능한 아이디 입니다")
				if (useId == true) {
					opener.document.getElementById("userId").value = '<%=checkId%>' // 팝업에서 id 값을 넘겨줌
				} else {
					$('#message').html("");
				}
				// $('#message').css('color', 'blue').css('font-size', '14px').html("사용가능한 아이디 입니다");	
				<%}%>
				<%}%>
			}
		</script>

		</html>