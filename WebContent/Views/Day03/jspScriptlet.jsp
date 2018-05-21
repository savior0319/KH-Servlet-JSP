<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
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
		int value = Integer.parseInt(request.getParameter("value"));
	%>

	<%
		if (value == 10) {
	%>
	10과 같습니다
	<%
		} else {
	%>
	10과 다릅니다
	<%
		}
	%>
</body>

</html>