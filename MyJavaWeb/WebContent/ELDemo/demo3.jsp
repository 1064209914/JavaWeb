<%@ page language="java" contentType="text/html; charset=UTF-8"  import="com.hxd.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<jsp:useBean id="person" class="com.hxd.Person"></jsp:useBean>
</head>
<body>
		<%
				pageContext.setAttribute("url", "http://www.baidu.com");
		%>
	
		<a href=s{url} >点击跳转</a>
	<%-- 	<%
		application.setAttribute("url","https://www.baidu.com");
		%>
		${peron.method }
		<a href=></a>
		<%
				response.setHeader("refresh", "0;https://www.baidu.com");
		%> --%>
</body>
</html>