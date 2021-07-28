<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method - 링크 결과</title>
</head>
<body>
	<%
		Date now = new Date();
		SimpleDateFormat formatter1 = new SimpleDateFormat("yyyy년 MM월 dd일");
		SimpleDateFormat formatter2 = new SimpleDateFormat("HH시 mm분 ss초");
		String what = request.getParameter("what");
		if(what.equals("date")) {
			what = formatter1.format(now);
			System.out.print("오늘 날짜는 ");
		} else if(what.equals("time")) {
			what = formatter2.format(now);
			System.out.print("현재 시간은 ");
		}
	%>
	<h1><%=what %></h1>
</body>
</html>