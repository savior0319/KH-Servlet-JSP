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
		/* session = request.getSession(false);가 필요없음 */
		/* 세션을 가지고 접속했다면 자동으로 해당 세션 값을 사용 */
		MemberVO mv = (MemberVO) session.getAttribute("user");
	%>

	<div class="wrapper">

		<%
			if (mv != null) {
		%>
		<hr id="line-1">
		<h1>
			<%=mv.getMemberName() + "님의 회원 정보"%>
		</h1>
		<hr id="line-2">
		<h3>
			<%="아이디 : " + mv.getMemberID()%><br>
			<%="이름 : " + mv.getMemberName()%><br>
			<%="나이 : " + mv.getMemberAge()%><br>
			<%="주소 : " + mv.getMemberAddr()%><br>
			<%
				} else {
			%>
			<hr id="line-1">
			<h1>
				<%="회원 정보가 없습니다"%>
			</h1>
				<a href="/web1/Views/Day03/memberIndex.html">로그인 페이지로 이동</a>
			<hr id="line-2">
			<%
				}
			%>
		</h3>
	</div>

</body>

</html>