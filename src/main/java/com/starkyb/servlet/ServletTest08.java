package com.starkyb.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test08")
public class ServletTest08 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		String search = request.getParameter("search");
		
		out.println("<html><head><title>form 연습문제 2</title></head>");
		out.println("<body>");
		Iterator<String> iter = list.iterator();
		while(iter.hasNext()) {
			String string = iter.next();
			
			if(string.contains(search)) {
				string = string.replace(search, "<b>" + search + "</b>");
				out.println(string + "<hr>");
			}
		}
		out.println("</body></html>");
	}
}
