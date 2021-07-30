<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post method 2 결과</title>
</head>
<body>
	<%
		String inputLength = request.getParameter("inputLength");
		double number = Integer.parseInt(inputLength);
		String[] lengthUnits = request.getParameterValues("length");
		
		for(int i = 0; i < lengthUnits.length; i++) {
			if(lengthUnits[i].equals("inch")) {
				number = number * 0.393701;
			}
			if(lengthUnits[i].equals("yard")) {
				number = number * 0.0109361;
			}
			if(lengthUnits[i].equals("feet")) {
				number = number * 0.0328084;
			}
			if(lengthUnits[i].equals("yard")) {
				number = number * 0.01;
			}
		}
	%>
	<h1>변환 결과</h1>
	<div>
		<%=inputLength %> cm <hr>
		<%=number %>
	</div>
</body>
</html>