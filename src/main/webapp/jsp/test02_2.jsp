<%@	page import="java.text.SimpleDateFormat"%>
<%@	page import="java.util.Date"%>
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
		String what = request.getParameter("what");
		
		//오늘 날짜를 기준으로 날짜 표현과 시간 표현
		Date now = new Date();

		String string = null;	
	
		if(what.equals("date")) { //날짜 조건
			SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy년 M월 d일");
			string = "오늘 날짜는 " + dateFormatter.format(now);
		} else { //시간 조건
			SimpleDateFormat timeFormatter = new SimpleDateFormat("H시 m분 s초");
			string = "현재 시간은 " + timeFormatter.format(now);
		}
	%>
	<div>
		<h1><%=string %></h1>
	</div>
</body>
</html>