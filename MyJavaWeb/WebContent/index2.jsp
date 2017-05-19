<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
			<h1>个人资料</h1>
			<table>
			<tr><tr> <td>姓名</td> <td>${user.getUserName()}</td> </tr>
				<tr> <td>年龄</td> <td> ${user.getUserAge() }</td> </tr>
				<tr> <td>生日</td> <td> ${user.getBirthday() }</td> </tr>
				<tr> <td>性别</td> <td>${user.getSex() } </td> </tr>
				<tr> <td>爱好</td> <td> <c:forEach var="hoppy" items="${user.getHoppys() }" >
					${hoppy}
				</c:forEach> </tr>
				<tr> <td>自我介绍</td> <td> ${user.getJieshao() } </tr>
			</table>
	
</body>
</html>