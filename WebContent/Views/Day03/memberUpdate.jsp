<%@page import="member.model.service.MemberService"%>
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

<style>
h1, h2 {
	color: skyblue;
}

.wrapper {
	margin: 0 auto;
	width: 400px;
	display: table;
}

#line-1 {
	height: 3px;
	background: black;
}

a {
	margin-left: auto;
	margin-right: auto;
	display: table;
	text-decoration: none;
}

a:hover {
	background: skyblue;
}
</style>

<body>

	<%
		MemberVO mv = new MemberVO();
		request.setCharacterEncoding("utf-8");
		mv.setMemberID(request.getParameter("userId"));
		mv.setMemberPwd(request.getParameter("userPwd"));
		mv.setMemberAddr(request.getParameter("userAddr"));
		int result = new MemberService().memberUpdate(mv);

		if (result > 0) {
			session.getAttribute("user");
	%>
	<div class="wrapper">
		<hr id="line-1">
		<h1>회원 정보를 변경했습니다</h1>
		<hr id="line-2">
		<a href="myInfo.jsp">마이 페이지로 돌아가기</a>
				<a href="memberIndex.html">로그인 페이지로 돌아가기</a>
	</div>
	<%
		} else {
	%>
	<div class="wrapper">
		<hr id="line-1">
		<h1>회원 정보 변경에 실패했습니다</h1>
		<hr id="line-2">
		<a href="myInfo.jsp">마이 페이지로 돌아가기</a>
		<a href="memberIndex.html">로그인 페이지로 돌아가기</a>
	</div>
	<%
		}
	%>

</body>

</html>