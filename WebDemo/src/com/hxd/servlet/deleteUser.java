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
 * Servlet implementation class deleteUser
 */
@WebServlet("/servlet/deleteUser")
public class deleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public deleteUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		if (null == name || "".equals(name)) {
			request.setAttribute("Error", "姓名不能为空！");
			request.getRequestDispatcher("/delete.jsp").forward(request, response);
		} else {
			UserDao userDao = UserDaoFactory.getEmployeeDAOInstance();
			User user = userDao.getUserByName(name);
			if (null == user) {
				request.setAttribute("error", "该用户不存在!请重新输入");
				request.getRequestDispatcher("/update.jsp").forward(request, response);
			}else {
				userDao.deleteUser(user);
				response.sendRedirect("../deletes.jsp");
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
