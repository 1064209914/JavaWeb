<%@ page language="java" contentType="text/html; charset=UTF-8"	import="java.util.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	//设置request值  他只在服务器页面跳转有效
		request.setAttribute("name","张三");
		request.setAttribute("age", "20");
		%>
	<jsp:forward page="demo2.jsp">
	<jsp:param value="12" name="1"/>
	
	</jsp:forward>
</body>
</html>