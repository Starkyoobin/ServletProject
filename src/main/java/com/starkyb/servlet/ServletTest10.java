package com.starkyb.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class ServletTest10 extends HttpServlet{
	//doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	 {
	     put("id", "hagulu");
	     put("password", "asdf");
	     put("name", "김인규");
	 }
	};
	
	Set<String> keys = userMap.keySet();
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
		out.println("<html><head><titil>Post Method 연습문제 2</title></head><body>");
		if(!userId.equals(userMap.get("id"))) {
			out.println("<h1>아이디가 일치하지 않습니다.</h1>");
		} else if(!password.equals(userMap.get("password"))) {
			out.println("<h1>패스워드가 일치하지 않습니다.</h1>");
		} else {
			out.println("<h1>" + userMap.get("name") + "님 환영합니다.</h1>");			
		}
		out.println("</body></html>");
	}
}
