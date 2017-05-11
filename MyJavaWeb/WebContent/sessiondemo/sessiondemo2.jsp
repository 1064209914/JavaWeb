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
	<%	
		 SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss"); 
		/* Date da=(Date)session.getAttribute("time"); */
		 Date da=new Date();
			
	%>
	sessionID编号：<%=session.getId() %><br/>
	当前时间：<%=sf.format(da) %>
</body>
</html>