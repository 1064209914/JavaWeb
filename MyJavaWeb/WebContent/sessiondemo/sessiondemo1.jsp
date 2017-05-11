<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>session对象</h1><hr/>
		<%
			session.setAttribute("time", new Date());
			SimpleDateFormat sf=new SimpleDateFormat("yyyy年MM月dd日    HH:mm:ss");
			Date date=new Date(session.getCreationTime());
			//设置最大间隔时间     单位为秒
			session.setMaxInactiveInterval(1);
			
		%>
		session创建时间： <%=sf.format(date) %><br/>
		sessionID编号：<%=session.getId() %><br/>
		<a href="sessiondemo2.jsp" target="_blank">点击获取当前时间</a>
		
</body>
</html>