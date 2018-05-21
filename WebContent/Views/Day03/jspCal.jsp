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

	<h1>계산결과</h1>
	<hr>

	<%
		int val1 = Integer.parseInt(request.getParameter("val1"));
		int val3 = Integer.parseInt(request.getParameter("val3"));
		String val2 = request.getParameter("val2");
		int result = 0;
	%>

	<%
		if (val2.equals("+") || val2.equals("-") || val2.equals("x") || val2.equals("/")) {
			if (val2.equals("+")) {
				result = val1 + val3;
			} else if (val2.equals("-")) {
				result = val1 - val3;
			} else if (val2.equals("/")) {
				result = val1 / val3;
			} else if (val2.equals("x")) {
				result = val1 * val3;
			}
	%>
	<h3>
		입력한 첫번째 값 :
		<%=val1%><br> 입력한 연산자 :
		<%=val2%><br> 입력한 두번째 값 :
		<%=val3%><br> 결과 <br>
		<%=val1 + " " + val2 + " " + val3 + " = " + result%>
	</h3>
	<%
		} else {
	%>

	<h3>연산자를 잘못입력했습니다</h3>
	<%
		}
	%>

</body>

</html>