<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav>
	<ul class="nav nav-fill bg-danger">
		<li class="nav-item"><a class="nav-link text-light" href="/jspTemplate/test01/test01.jsp">전체</a></li>
		<li class="nav-item"><a class="nav-link text-light" href="/jspTemplate/test01/category.jsp?category=지상파">지상파</a></li>
		<li class="nav-item"><a class="nav-link text-light" href="/jspTemplate/test01/category.jsp?category=드라마">드라마</a></li>
		<li class="nav-item"><a class="nav-link text-light" href="/jspTemplate/test01/category.jsp?category=예능">예능</a></li>
		<li class="nav-item"><a class="nav-link text-light" href="/jspTemplate/test01/category.jsp?category=영화">영화</a></li>
		<li class="nav-item"><a class="nav-link text-light" href="/jspTemplate/test01/category.jsp?category=스포츠">스포츠</a></li>
	</ul>
</nav>