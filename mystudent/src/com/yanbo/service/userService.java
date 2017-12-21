package com.yanbo.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.yanbo.model.userTable;

public class userService {
	
	private Connection conn;
	private PreparedStatement pstmt;
	
	public userService() {
		conn = new com.yanbo.connect.connect().getConnect();
	}
	
	public boolean valiUser(userTable user) {
		try {
			pstmt = conn.prepareStatement("select * from usertable where username=? and password=?");
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			
			ResultSet rs = pstmt.executeQuery();
			
			if (rs.next()) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean addUser (userTable user) {
		try {
			pstmt = conn.prepareStatement("insert into usertable (username,password) values(?,?)");
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			pstmt.executeUpdate();
			System.out.println("向用户数据库中添加新用户信息完成！");
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
}
