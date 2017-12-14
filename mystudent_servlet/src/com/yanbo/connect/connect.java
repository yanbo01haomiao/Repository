package com.yanbo.connect;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class connect {
	
	private static String driverClass;
	private static String url;
	private static String user;
	private static String password;
	
	public Connection getConnect () {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			url = "jdbc:mysql://localhost:3306/mystudent?useUnicode=true&characterEncoding=utf-8";
			user = "root";
			password = "";
			Connection conn = DriverManager.getConnection(url,user,password);
			System.out.println("数据库连接成功！");
			return conn;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	public Connection getConnectUP () {
		try {
			InputStream in = connect.class.getClassLoader().getResourceAsStream("jdbc.properties");
			Properties props = new Properties();
			props.load(in);
			driverClass = props.getProperty("driverClass");
			url = props.getProperty("url");
			user = props.getProperty("user");
			password = props.getProperty("password");
			Class.forName(driverClass);
			System.out.println("配置文件方式连接数据库成功！");
			Connection conn = DriverManager.getConnection(url,user,password);
			return conn;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
}



