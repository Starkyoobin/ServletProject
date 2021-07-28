<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 예제</title>
</head>
<body>
	<%
		//1~10까지의 합 구하기
		int sum = 0;
		for(int i = 0; i <= 10; i++){
			sum += i;
		}
	%>
	<strong>합계 : <%=sum %></strong>
	<input type="text" value="<%=sum %>"> <br>
	
	<%
		List<String> animal = new ArrayList<>();
		animal.add("dog");
		animal.add("cat");
	%>
	<b><%=animal.get(0) %></b> <br>
	<b><%=animal.get(1) %></b> <br>
	
	<%!
		//member 변수
		private int num = 10;
	
		//method
		//hello world 리턴하는 method
		public String getHelloWorld() {
			return "Hello World";
		}
	%>
	<%=getHelloWorld() %>
	<%=num %>
</body>
</html>