<%@page import="com.hxd.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {
margin-left: 300px;
}
</style>
</head>
<body>
<div>
			<h1>个人资料</h1>
			<table  border="">
			<tr><tr> <td>姓名</td> <td style="width: 300px;height: 20px;"></td > <td rowspan="3" style="width: 80px;"></td></tr>
				<tr> <td>年龄</td> <td></td>  </tr>
				<tr> <td>生日</td> <td> </td> </tr>
				<tr> <td >性别</td> <td colspan="2"> </td></tr>
				<tr> <td>爱好</td> <td colspan="2"> </tr>
				<tr> <td>自我介绍</td> <td colspan="2"></td></tr>
			</table>
			</div>
			<%
/* 				application.setAttribute("name", "zhangsan");
		this.getServletContext().setAttribute("name", "zhaosi");
				session.setAttribute("ss","44"); */
				request.getSession().setAttribute("user", new User());
				/* session.removeAttribute("user"); */
			%>
			<a href="<%= request.getContextPath()%>/servlet/XiaoHui" >销毁</a>
			
</body>
</html>