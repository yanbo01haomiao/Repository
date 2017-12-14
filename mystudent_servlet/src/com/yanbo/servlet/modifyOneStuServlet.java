package com.yanbo.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yanbo.model.stuInfo;
import com.yanbo.service.stuInfoService;

/**
 * Servlet implementation class modifyOneStuServlet
 */
@WebServlet(description = "修改学生信息", urlPatterns = { "/student/modifyOneStuServlet" })
public class modifyOneStuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public modifyOneStuServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * 1、获取修改的学生的ID
		 * 2、查询到此名学生的信息
		 * 3、将获取的信息存到session里面去
		 * 4、将信息返回到修改的jsp页面*/
		int id = Integer.parseInt(request.getParameter("id"));//1
		stuInfo stu = new stuInfoService().queryStubyID(id);//2
		HttpSession session = request.getSession();
		session.setAttribute("stu", stu);//3
		response.sendRedirect("../modifyOneStu.jsp");
	}

}
