<%@page import="javax.el.ELContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%! 
			String[] strings={"hjghjgjh","zhangsan"};
		%>
		${5>=2}<br/>
		${5>=2?  2:5}<br/>
		${a==0? 0:1 }<br/>
		
		${a+20 }
		<%
		    ELContext e=	pageContext.getELContext();
		%>
			
</body>
</html>