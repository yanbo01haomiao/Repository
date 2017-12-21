package com.yanbo.test;

import java.sql.SQLException;
import java.util.List;

import com.yanbo.model.stuInfo;
import com.yanbo.model.userTable;
import com.yanbo.service.stuInfoService;
import com.yanbo.service.userService;

public class test {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		//new jdbcUtil();
		// TODO Auto-generated method stub
		//new connect().getConnect();
		//new connect().getConnectUP();
		//jdbcUtil.getConnection();
		//stuInfo test1 = new stuInfo(5,"yanbo","烟波",(byte) 1,"1998-02-04","信息安全","高数","阅读","无");
		//stuInfoService ser = new stuInfoService();
		//List stus = ser.queryAllStu();
		//stuInfo test1 = (stuInfo)ser.queryStubyID(1);
		//ser.updateStu(test1);
		//ser.deleteStu(7);
		userTable user = new userTable("123","123");
		userService userSer = new userService();
		if (userSer.valiUser(user)) {
			System.out.println("查找完成：用户名："+user.getUsername()+"，密码："+ user.getPassword());
			System.out.println("注册查找测试完成！");
		} else {
			System.out.println("未查找到：用户名："+user.getUsername()+"，密码："+ user.getPassword() + "的用户。进行注册！");
			if(userSer.addUser(user)) {
				System.out.println("注册完成！");
			} else {
				System.out.println("注册失败，请检查！");
			}
		}
		//ser.addStu(test1);
		//测试通过
	}

}
