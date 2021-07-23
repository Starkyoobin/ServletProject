package com.starkyb.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet/test05")
public class ServletTest05 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter(); 
		
		int number = Integer.parseInt(request.getParameter("number"));
		out.println("<html><head><title>Get Method와 HTML</title></head>");
		out.println("<body>");
		for(int i = 1; i <= 9; i++) {
			out.println(number + " X " + i + " = " + (number * i));
			out.println("<br>");
		}
		out.println("</body></html>");
	}
}
