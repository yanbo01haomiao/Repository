package com.yanbo.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yanbo.service.stuInfoService;

/**
 * Servlet implementation class deleteStuServlet
 */
@WebServlet("/student/deleteStuServlet")
public class deleteStuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteStuServlet() {
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
		 * 1、获取ID
		 * 2、删除*/
		int id = Integer.parseInt(request.getParameter("id"));
		if (new stuInfoService().deleteStu(id)) {
			response.sendRedirect("../deleteStu_success.jsp");
			System.out.println("deleteStuServlet在数据库中删除学生信息完成！");
		} else {
			response.sendRedirect("../deletestuinfo.jsp");
			System.out.println("deleteStuServlet在数据库中删除学生信息失败！退回deletestuinfo.jsp");
		}
	}

}
