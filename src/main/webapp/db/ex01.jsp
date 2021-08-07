<%@page import="java.sql.ResultSet"%>
<%@ page import="com.starkyb.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 리스트</title>
</head>
<body>
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		//new_user 테이블에 있는 모든 값 출력
		String query = "SELECT * FROM `new_user`";
		ResultSet result = mysqlService.select(query);	
	%>	
	<!-- new_user 모든 값을 table 태그를 통해 출력 -->
	<%
		while(result.next()) {
	%>
		<div>이름 : <%=result.getString("name") %>, 생년월일 : <%=result.getString("yyyymmdd") %></div>
	<%
		}
	%>
	
</body>
</html>