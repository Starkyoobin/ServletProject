package com.starkyb.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//http://localhost:8080/servlet/ex03?user_id=starkyb&name=kim?age=30
@WebServlet("/servlet/ex03")
public class ServletEx03 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("user_id");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
//		out.println("<html><head><title>get 파마미터 확인</title></head>");
//		out.println("<body><h3>" + id + " : " + name + " - " + age + "</h3></body></html>");
		
		//?user_id=starkyb&name="김유빈"&age=21
		//{"user_id":"starkyb", "name":"김유빈", "age":21}
		out.println("{\"user_id\":\"" + id + "\", \"name\":\"" + name + "\", \"age\":" + age + "}");
	}
}
