package com.yanbo.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yanbo.model.stuInfo;


public class stuInfoService {
	private Connection conn;
	private PreparedStatement pstmt;
	
	public stuInfoService() {
		conn = new com.yanbo.connect.connect().getConnect();
	}
	
	public boolean addStu(stuInfo stu) {
		try {
			pstmt = conn.prepareStatement("insert into mystudentinfo"
					+ "(nickname,truename,sex,birthday,specialty,course,interst,remark)"
					+ "values(?,?,?,?,?,?,?,?)");
			pstmt.setString(1, stu.getNickname());
			pstmt.setString(2, stu.getTruename());
			pstmt.setByte(3, stu.getSex());
			pstmt.setString(4, stu.getBirthday());
			pstmt.setString(5, stu.getSpecialty());
			pstmt.setString(6, stu.getCourses());
			pstmt.setString(7, stu.getIntersts());
			pstmt.setString(8, stu.getRemark());
			pstmt.executeUpdate();
			System.out.println("向数据库中添加信息完成！");
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	
	public List queryAllStu() {
		List stus = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from mystudentinfo");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				stuInfo stu = new stuInfo();
				
				stu.setId(rs.getInt(1));
				stu.setNickname(rs.getString(2));
				stu.setTruename(rs.getString(3));
				stu.setSex(rs.getByte(4));
				if (rs.getString(5) != null) {
					stu.setBirthday(rs.getString(5));
				}
				stu.setSpecialty(rs.getString(6));
				if (rs.getString(7) != null) {
					stu.setCourse(rs.getString(7).split("&"));
				}
				if (rs.getString(8) != null) {
					stu.setInterst(rs.getString(8).split("&"));
				}
				stu.setRemark(rs.getString(9));
				
				stus.add(stu);
			}
			return stus;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	
	public stuInfo queryStubyID(int id) {
		try {
			pstmt = conn.prepareStatement("select * from mystudentinfo where id = ?");
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				stuInfo stu = new stuInfo();
				stu.setId(rs.getInt(1));
				stu.setNickname(rs.getString(2));
				stu.setTruename(rs.getString(3));
				stu.setSex(rs.getByte(4));
				if (rs.getString(5) != null) {
					stu.setBirthday(rs.getString(5));
				}
				stu.setSpecialty(rs.getString(6));
				if (rs.getString(7) != null) {
					stu.setCourse(rs.getString(7).split("&"));
				}
				if (rs.getString(8) != null) {
					stu.setInterst(rs.getString(8).split("&"));
				}
				stu.setRemark(rs.getString(9));
				return stu;
			}
			return null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	public boolean updateStu (stuInfo stu) {
		try {
			pstmt = conn.prepareStatement("update mystudentinfo set "
										+ "nickname=?,truename=?,sex=?,birthday=?,specialty=?,course=?,interst=?,remark=?"
										+ "where id = ?");
			pstmt.setString(1, stu.getNickname());
			pstmt.setString(2, stu.getTruename());
			pstmt.setByte(3, stu.getSex());
			pstmt.setString(4, stu.getBirthday());
			pstmt.setString(5, stu.getSpecialty());
			pstmt.setString(6, stu.getCourses());
			pstmt.setString(7, stu.getIntersts());
			pstmt.setString(8, stu.getRemark());
			pstmt.setInt(9, stu.getId());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean deleteStu (int id) {
		try {
			pstmt = conn.prepareStatement("delete from mystudentinfo where id=?");
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
}
