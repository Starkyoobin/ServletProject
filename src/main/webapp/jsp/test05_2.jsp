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
		String length = request.getParameter("length");
		double centimeter = Integer.parseInt(length);
		String[] types = request.getParameterValues("type");
	%>
	<h1>변환 결과</h1>
	<div>
		<h3><%=centimeter %> cm</h3><hr>
	</div>
	<%	
		for(int i = 0; i < types.length; i++) {
			String type = types[i];
			
			if(type.equals("inch")) {
				double inch = centimeter * 0.39;
			%>
				<h3><%=inch %> in</h3> <br>
			<%
			} else if(type.equals("yard")) {
				double yard = centimeter * 0.010936133;			
			%>
				<h3><%=yard %> yd</h3> <br>
			<%
			} else if(type.equals("feet")) {
				double feet = centimeter * 0.032808399;			
			%>
				<h3><%=feet %> ft</h3> <br>
			<%
			} else if(type.equals("meter")) {
				double meter = centimeter / 100.0;			
			%>
				<h3><%=meter %> m</h3> <br>
			<%
			}
		}			
	%>
</body>
</html>