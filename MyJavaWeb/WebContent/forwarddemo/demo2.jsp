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
			String name=(String)request.getAttribute("name");
			String age=(String)request.getAttribute("age");
			String kk=(String)request.getParameter("1");
		%>
		姓名<%=name %><br/>
		年龄<%=age %><br/>
		参数<%=kk %>
</body>
</html>