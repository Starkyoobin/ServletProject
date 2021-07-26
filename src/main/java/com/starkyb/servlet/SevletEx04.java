package com.starkyb.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// /servlet/ex04?user_id=starkyb&name=김유빈&birth=20010626&email=yb010626@gmail.com
@WebServlet("/servlet/ex04")
public class SevletEx04 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		//table 형태로 출력
		out.println("<html><head><title>회원정보</title></head>");
		out.println("<body><table border=1>");
		//key : value
		out.println("<tr><td>아이디</td> <td>" + userId + "</td></tr>");
		out.println("<tr><td>이름</td> <td>" + name + "</td></tr>");
		out.println("<tr><td>생년월일</td> <td>" + birth + "</td></tr>");
		out.println("<tr><td>이메일</td> <td>" + email + "</td></tr>");
		out.println("</table></body></html>");
	}
}
