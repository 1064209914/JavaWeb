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
 * Servlet implementation class Login
 */
@WebServlet("/servlet/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String name=request.getParameter("userName");
			if (null!=name||"".equals(name)) {
				UserDao userDao= UserDaoFactory.getEmployeeDAOInstance();
				User user =userDao.getUserByName(name);
				if (null!=user) {
					String pw1= user.getPassword();
					if (null!=pw1||"".equals(pw1)) {
						if (pw1.equals(request.getParameter("passWord"))) {
							request.getRequestDispatcher("/login/welcome.jsp").forward(request, response);
						request.getSession().setAttribute("user",user);
						}
					
				}
					
				}
				
			}
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				doGet(request, response);
	}

}
