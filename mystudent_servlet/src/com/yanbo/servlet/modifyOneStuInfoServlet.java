package com.yanbo.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yanbo.model.stuInfo;
import com.yanbo.service.stuInfoService;

/**
 * Servlet implementation class nmodifyOneStuInfoServlet
 */
@WebServlet(description = "修改完成后的提交", urlPatterns = { "/student/modifyOneStuInfoServlet" })
public class modifyOneStuInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public modifyOneStuInfoServlet() {
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
		 * 1、提取表单全部信息
		 * 2、然后进行更新*/
		request.setCharacterEncoding("utf-8");
		int id =Integer.parseInt(request.getParameter("id"));
		String nickname = request.getParameter("nickname");
		String truename = request.getParameter("truename");
		byte sex = Byte.parseByte(request.getParameter("sex"));
		String birthday = request.getParameter("birthday");
		String specialty = request.getParameter("specialty");
		//课程比较特殊,获取到的必须是数组
		String course[] = request.getParameterValues("course");
		String interst[] = request.getParameterValues("interst");
		String remark = request.getParameter("remark");
		//stuInfo stu = new stuInfo(nickname,truename,sex,birthday,specialty,course,interst,remark);
		stuInfo stu = new stuInfo();
		stu.setId(id);
		stu.setNickname(nickname);
		stu.setTruename(truename);
		stu.setSex(sex);
		stu.setBirthday(birthday);
		stu.setSpecialty(specialty);
		if(course != null)
			stu.setCourse(course);
		if(interst != null)
			stu.setInterst(interst);
		stu.setRemark(remark);
		
		if (new stuInfoService().updateStu(stu)) {
			response.sendRedirect("../modifyOneStu_success.jsp");
			System.out.println("modifyOneStuInfoServlet向数据库中更新学生信息完成！");
		} else {
			response.sendRedirect("../modifyOneStu.jsp");
			System.out.println("modifyOneStuInfoServlet向数据库中更新学生信息失败！退回inputstuinfo.jsp");
		}
	}

}
