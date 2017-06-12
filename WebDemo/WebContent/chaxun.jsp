<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/servlet/chaxun"
		method="post">
		<font color="red">${requestScope.Error }</font><br /> 请输入要查询的姓名： <input
			type="text" name="name"> <input type="submit" value="查询">
	</form>
	<br />
	<br />
	<c:choose>
		<c:when test="${empty sessionScope.user}">
				没有查询到用户 
		</c:when>
		<c:otherwise>
			<ul>
				<li>用户id：${user.id}</li> 
				<li>用户姓名：${user.name}</li>
				<li>用户年龄：${user.age}</li>
				<li>手机号码：${user.phone}</li>
			</ul>
			<a href=" <%= request.getContextPath()%>/servlet/deletedemo">删除</a>
		</c:otherwise>
	</c:choose>


</body>
</html>