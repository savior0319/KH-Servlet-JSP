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
			<fieldset>
				<form action="memberUpdate.jsp" method="post">
					<pre>
    아이디      <input readonly="readonly" type="text" name="userId"
							id="userId" value="<%=mv.getMemberID()%>"> <br>
   비밀번호     <input type="password" name="userPwd" id="userPwd"
							value="<%=mv.getMemberPwd()%>"> <br>
비밀번호 확인   <input type="password" name="userPwdRe" id="userPwdRe"
							value="<%=mv.getMemberPwd()%>"> <br>
    이름       <input readonly type="text" name="userName" id="userName"
							value="<%=mv.getMemberName()%>"><br>
     나이       <input readonly type="text" name="userAge" id="userAge"
							value="<%=mv.getMemberAge()%>"> <br>
     주소       <input type="text" name="userAddr" id="userAddr"
							value="<%=mv.getMemberAddr()%>"> <br>
<input type="submit" value="정보수정"> <button type="button" onclick="back();">돌아가기</button>
</pre>
				</form>
			</fieldset>
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

<script>
	function back() {
		window.location.href = "Login.jsp";
	}
</script>

</html>