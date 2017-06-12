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
 * Servlet implementation class updateUser
 */
@WebServlet("/servlet/updateUser")
public class updateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public updateUser() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String  name=request.getParameter("name");
		String age=request.getParameter("age");
		String phone=request.getParameter("phone");
		if (null==name||"".equals(name)||null==age||"".equals(age)||null==phone||"".equals(phone)) {
			request.setAttribute("Error", "每项都不能为空！");
			request.getRequestDispatcher("/update.jsp").forward(request, response);
		}else{
			UserDao userDao=UserDaoFactory.getEmployeeDAOInstance();
			User user1= userDao.getUserByName(name);
			if (null==user1) {
				request.setAttribute("error", "该用户不存在!请重新输入");
				request.getRequestDispatcher("/update.jsp").forward(request, response);
			}else{
				User user=new User();
				user.setAge(age);
				user.setName(name);
				user.setPhone(phone);
				userDao.updateUser(user);
				
				response.sendRedirect("../updatesuccessed.jsp");
				
			}
		}
			
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
