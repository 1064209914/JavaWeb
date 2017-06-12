package com.hxd.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hxd.bean.User;
import com.hxd.dao.UserDao;
import com.hxd.factory.UserDaoFactory;

/**
 * Servlet implementation class addUser
 */
@WebServlet("/servlet/addUser")
public class addUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public addUser() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String name=request.getParameter("name");
			String age=request.getParameter("age");
			String phone=request.getParameter("phone");
			if (null==name||"".equals(name)||null==age||"".equals(age)||null==phone||"".equals(phone)) {
				request.setAttribute("Error", "每项都不能为空！");
				request.getRequestDispatcher("/add.jsp").forward(request, response);
			}else {
				User user=new User();
				user.setName(name);
				user.setAge(age);
				user.setPhone(phone);
				UserDao userDao=UserDaoFactory.getEmployeeDAOInstance();
				userDao.addUser(user);
				response.sendRedirect("../addsuccessed.jsp");
			}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
