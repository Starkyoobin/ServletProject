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
		SimpleDateFormat formatter1 = new SimpleDateFormat("yyyy년 MM월 dd일") ;
		SimpleDateFormat formatter2 = new SimpleDateFormat("HH시 mm분 ss초") ;
		String nowDate = formatter1.format(now);
		String nowTime = formatter2.format(now);
	%>
	<h1>오늘 날짜는 <%=request.getParameter("nowDate") %></h1>
	<h1>현재 시간은 <%=request.getParameter("nowTime") %></h1>
</body>
</html>