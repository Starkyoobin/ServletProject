package com.starkyb.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class ServletTest07 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.parseInt(request.getParameter("price"));
		
		if(!address.contains("서울시")) {
			out.println("배달 불가 지역입니다.");
		} else if(card.equals("신한카드")) {
			out.println("결제 불가 카드입니다.");
		}  else {
			out.println("<html><head><title>form 연습문제 1</title></head>");
			out.println("<body><h3>" + address + " 배달 준비중</h3>");
			out.println("<hr>");
			out.println("<div> 결제금액 : " + price + "</div>");
			out.println("</body></html>");			
		}
		
	}
}
