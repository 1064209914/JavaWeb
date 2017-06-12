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
 * Servlet implementation class chaxun
 */
@WebServlet("/servlet/chaxun")
public class chaxun extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public chaxun() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				String  name=request.getParameter("name");
				if (null==name||"".equals(name)) {
					request.setAttribute("Error","请正确填写");
					request.getRequestDispatcher("/chaxun.jsp").forward(request, response);
				}else {
					UserDao userDao=UserDaoFactory.getEmployeeDAOInstance();
					 User user= userDao.getUserByName(name);
					request.getSession().setAttribute("user", user);
					request.getRequestDispatcher("/chaxun.jsp").forward(request, response);
					
				}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
