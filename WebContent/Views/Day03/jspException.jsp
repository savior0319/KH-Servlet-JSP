<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="ExceptionPage.jsp"%>
<!-- exception 발생 시 -> ExceptionPage.jsp로 이동 -->
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
		String str = request.getParameter("str");
		if (str.length() == 0) {
			str = null;
		}
	%>
	문자열의 길이는 :
	<%=str.length()%>
</body>

</html>