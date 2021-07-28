<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>
	<%
		int[] scores = {80, 90, 100, 95, 80};
		double sum = 0;
		for(int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		double average = sum / scores.length;
	%>
	<h1>1. 평균 : <%=average %></h1> <br>
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		sum = 100;
		//for(int i = 0; i < scoreList.size(); i++) {
		//	if(scoreList.get(i).equals("X")) {
		//		sum -= 10;
		//	}
		//}
		for(String check:scoreList) {
			if(check.equals("X")) {
				sum -= 10;
			}
		}
	%>
	<h1>2. 총점 : <%=sum %></h1> <br>
	
	<%!
		public int calculateNumber(int number) {
			int total = 0;
			for(int i = 1; i <= number; i++) {
				total += i;
			}
			return total;
		}
	%>
	<h1>3. 1부터 n까지의 합 : <%=calculateNumber(50) %></h1> <br>
	
	<%!
		String birthDay = "20010820";
		int birthYear = Integer.parseInt(birthDay.substring(0, 4));
		int currentYear = 2021;
		public int getAge() {
			return currentYear - birthYear + 1;
		}
	%>
	<h1>4. 나이 : <%=getAge() %></h1>
</body>
</html>