package com.yanbo.servlet;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yanbo.model.userTable;
import com.yanbo.service.userService;

public class loginServlet extends HttpServlet{
	
	public void doPost (HttpServletRequest request,HttpServletResponse response) {
		//与表单中的name属性一致
		String usernname = request.getParameter("username");
		String password = request.getParameter("password");
		userTable user = new userTable(usernname, password);	
		
		try {
			if (new userService().valiUser(user)) {
				System.out.println("Servlet验证用户名和密码成功！创建session完成！");
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				System.out.println("创建session完成！");
				response.sendRedirect("../main.jsp");
			} else {
				System.out.println("Servlet验证用户名和密码失败！");
				response.sendRedirect("../index.jsp");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void doGet (HttpServletRequest request,HttpServletResponse response) {
		doPost(request, response);
	}
}
