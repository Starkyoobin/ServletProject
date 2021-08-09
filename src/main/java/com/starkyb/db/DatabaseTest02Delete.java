package com.starkyb.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.starkyb.common.MysqlService;

@WebServlet("/db/test02_delete")
public class DatabaseTest02Delete extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String deleteQuery = "DELETE FROM `web` WHERE `name` = " + name;
		int count = mysqlService.update(deleteQuery);
		
		out.println("삭제성공 " + count);
	}
}
