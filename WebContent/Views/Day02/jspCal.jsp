<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>

	<body>
		<%
		int val1 = Integer.parseInt(request.getParameter("val1"));
		int val2 = Integer.parseInt(request.getParameter("val2"));
		String op = request.getParameter("op");
		int result = 0;
		String operand = "";
		
		if (op.equals("div")) {
			operand = "/";
			result = val1 / val2;
		} else if (op.equals("mul")) {
			operand = "x";
			result = val1 * val2;
		} else if (op.equals("plus")) {
			operand = "+";
			result = val1 + val2;
		} else if (op.equals("minus")) {
			operand = "-";
			result = val1 - val2;
		}
	%>
			<center>
				<h1>계산결과</h1>
				<hr>
				<h3>
					<%=val1 + " " + operand + " " + val2 + " = " + result%>
				</h3>
			</center>
	</body>

	</html>