<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
</head>

<style>
h1 {
	color: blue
}

.wrapper {
	margin: 0 auto;
	width: 600px;
	text-align: center;
}
</style>

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
	<div class="wrapper">
		<h1>계산결과</h1>
		<hr>
		<h3>
			<%=val1 + " " + operand + " " + val2 + " = " + result%>
		</h3>
	</div>
</body>

</html>