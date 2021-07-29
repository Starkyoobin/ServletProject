<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST Method 1 결과</title>
</head>
<body>
	<%
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		String calculate = request.getParameter("calculate");
		int result;
		
		if(calculate.equals("+")) {
			result = number1 + number2;
		} else if(calculate.equals("-")) {
			result = number1 - number2;
		} else if(calculate.equals("X")) {
			result = number1 * number2;
		} else {
			result = number1 / number2;
		}
	%>
	<h1>계산 결과</h1>
	<div>
		<%=number1 %> <%=calculate %> <%=number2 %> = <%=result %>
	</div>
</body>
</html>