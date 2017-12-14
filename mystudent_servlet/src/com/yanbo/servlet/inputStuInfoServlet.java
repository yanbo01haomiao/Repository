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
 * Servlet implementation class inputStuInfoServlet
 */
@WebServlet(description = "输入学生信息", urlPatterns = { "/student/inputStuInfoServlet" })
public class inputStuInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public inputStuInfoServlet() {
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
		/*	id int(11) AI PK 
			nickname char(20) 
			truename char(20) 
			sex bit(1) 
			birthday date 
			specialty varchar(20) 
			course varchar(100) 
			interst varchar(20) 
			remark varchar(500)	*/
		request.setCharacterEncoding("utf-8");
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
		stu.display();
		if (new stuInfoService().addStu(stu)) {
			response.sendRedirect("../inputStuInfo_success.jsp");
			System.out.println("Servlet向数据库中添加学生信息完成！");
		} else {
			response.sendRedirect("../inputstuinfo.jsp");
			System.out.println("Servlet向数据库中添加学生信息失败！退回inputstuinfo.jsp");
		}
	}

}
