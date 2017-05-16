package servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hxd.User;

/**
 * Servlet implementation class relogin
 */
@WebServlet(urlPatterns = "/servlet/relogin", loadOnStartup = 1)
public class relogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int num = 0;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public relogin() {
		System.out.println("构造方法被调用...");
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("初始化方法被调用...");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("销毁方法被调用...");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userName, userAge, jieshao, sex, birthday;
		String[] hoppys;
		User user = new User();
		userName = request.getParameter("userName");
		userAge = request.getParameter("userAge");
		sex = request.getParameter("sex");
		jieshao = request.getParameter("jieshao");
		// 复选框 要用这样的
		hoppys = request.getParameterValues("hoppys");
		birthday = request.getParameter("birthday");

		user.setBirthday(birthday);
		user.setHoppys(hoppys);
		user.setJieshao(jieshao);
		user.setSex(sex);
		user.setUserAge(userAge);
		user.setUserName(userName);
		request.getSession().setAttribute("user", user);
		request.getRequestDispatcher("/index2.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
