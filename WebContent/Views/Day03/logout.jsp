<%@page import="member.model.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
</head>

<body>

	<%
		if ((MemberVO) session.getAttribute("user") != null) {
			session.invalidate();
	%>
	<script>alert('로그아웃 되었습니다');
		window.location.replace('/web1/Views/Day03/memberIndex.html');
	</script>
	<%
		} else {
	%>
	<script>alert('로그인 정보가 없습니다');
		window.location.replace('/web1/Views/Day03/memberIndex.html');
	</script>
	<%
		}
	%>



</body>

</html>