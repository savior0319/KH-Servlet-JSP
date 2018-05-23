<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="member.model.vo.MemberVO"
	import="member.model.service.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>로그인</title>
</head>

<style>
h1, h2 {
	color: skyblue;
}

a {
	text-decoration: none;
}

a:hover {
	background: skyblue;
}

.wrapper {
	margin: 0 auto;
	display: table;
	width: 400px;
	text-align: center;
}

#line-1 {
	height: 3px;
	background: black;
}
</style>

<body>

	<%
		MemberService mService = new MemberService();
		MemberVO mv = new MemberVO();
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");

		mv = mService.selectMember(userId, userPwd);
	%>

	<div class="wrapper">
		<%
			if (mv == null) {
		%>
		<h2>회원 정보가 잘못 입력됐습니다</h2>
		<a href="memberIndex.html">로그인 페이지로 이동</a>
		<%
			} else {
				/* 자동으로 session 발급 ->  session.getSession();이 필요없음 */
				session.setAttribute("user", mv);
		%>
		<hr id="line-1">
		<h1>
			<%=mv.getMemberName() + "님 환영합니다"%>
		</h1>
		<a href=myInfo.jsp>마이페이지 </a> <a href=logout.jsp>로그아웃 </a> <a
			href=memberDel.html>회원탈퇴 </a>
		<hr id="line-2">
		<%
			}
		%>
	</div>

</body>

</html>