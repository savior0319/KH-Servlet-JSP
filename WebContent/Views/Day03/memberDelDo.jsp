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
		MemberVO mv = (MemberVO) session.getAttribute("user");
		int result = new MemberService().memberDel(mv.getMemberID());
		if (result > 0) {
	%>
	<script>
		alert('회원이 탈퇴 되었습니다');
		window.location.href = "/web1/Views/Day03/memberIndex.html";
	</script>
	<%
		} else {
	%>
	<script>
		alert('회원 탈퇴에 실패했습니다');
		window.location.href = "/web1/Views/Day03/memberIndex.html";
	</script>
	<%
		}
	%>

</body>

</html>