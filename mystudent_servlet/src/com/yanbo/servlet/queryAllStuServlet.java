package com.yanbo.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yanbo.service.stuInfoService;

/**
 * Servlet implementation class queryAllStuServlet
 */
@WebServlet(description = "查询全部学生信息", urlPatterns = { "/student/queryAllStuServlet" })
public class queryAllStuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public queryAllStuServlet() {
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
		//query  modify  delete  osid=modify
		String osid = request.getParameter("osid");
		System.out.println(osid);
		//获得全部学生信息
		List stus = new stuInfoService().queryAllStu();
		//将信息存进session
		HttpSession session = request.getSession();
		session.setAttribute("stus", stus);
		//跳转到显示学生信息的页面
		if (osid.equals("query")) {
			response.sendRedirect("../displaystuinfo.jsp");
		} else if (osid.equals("modify")) {
			response.sendRedirect("../modifystuinfo.jsp");
		} else {
			response.sendRedirect("../deletestuinfo.jsp");
		}
	}

}
