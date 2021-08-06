package com.starkyb.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	private static MysqlService mysqlService = null;
	
	//url, userId, password
	private String url;
	private String userId;
	private String password;
	
	//접속 관리 객체
	private Connection connection;
	private Statement statement;
	
	public MysqlService() {
		this.url = "jdbc:mysql://localhost:3306/hw_starkyb";
		this.userId = "root";
		this.password = "dbqls1379!";
	}
	
	public static MysqlService getInstance() {
		if(mysqlService == null) {
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	
	//접속 메소드
	public void connect() {
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			this.connection = DriverManager.getConnection(this.url, this.userId, this.password);
			this.statement = this.connection.createStatement();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//쿼리 수행 메소드
	//업데이트 메소드 INSERT, UPDATE, DELETE
	public int update(String query) {
		int count = 0;
		try {
			count = this.statement.executeUpdate(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}
	
	//select 쿼리 수행 메소드
	public ResultSet select(String query) {
		ResultSet result = null;
		try {
			result = this.statement.executeQuery(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//DB 연결 끊기 메소드
	public void disconnect() {
		try {
			this.statement.close();
			this.connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
