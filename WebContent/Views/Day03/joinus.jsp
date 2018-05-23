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

<body>

	<%
		MemberVO mv = new MemberVO();
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userId");
		int userAge = Integer.parseInt(request.getParameter("userAge"));
		String userAddr = request.getParameter("userAddr");

		mv.setMemberID(userId);
		mv.setMemberPwd(userPwd);
		mv.setMemberName(userName);
		mv.setMemberAge(userAge);
		mv.setMemberAddr(userAddr);

		int result = new MemberService().joinus(mv);

		if (result > 0) {
	%>
	<script>
		alert('회원가입이 완료 되었습니다');
		window.location.href = "/web1/Views/Day03/memberIndex.html";
	</script>
	<%
		} else {
	%>
	<script>
		alert('회원가입에 실패 했습니다');
		window.location.href = "/web1/Views/Day03/memberIndex.html";
	</script>
	<%
		}
	%>

</body>

</html>