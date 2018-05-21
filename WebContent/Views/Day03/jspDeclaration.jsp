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
		int a = 999;
	%>
	<!-- _jspService 메소드의 지역변수 -->

	<%!int data = 100;%>

	<!-- 해당 JSP 클래스의 전역 변수(맴버변수) -->
	<%=data%>
	<%!public void dataPrint() {
		System.out.println(data);
	}%>
</body>

</html>