<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<!-- exception 페이지 -->
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
</head>

<style>
	div{
	margin-left: auto;
	margin-right: auto;
	display: table;
	text-align: center;
	}
</style>

<body>
	<div>
		<h1>에러가 발생하였습니다</h1>
		<hr>
		<h3>
			에러 종류 :
			<%=exception.getClass().getName()%>
		</h3>
	</div>
</body>

</html>