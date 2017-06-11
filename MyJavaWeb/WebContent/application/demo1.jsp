<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
			<h1>application对象</h1><br>
			<%
				application.setAttribute("name", "zhangsan");
				application.setAttribute("sex", "man");
				application.setAttribute("age", "20");	
			%>
			名字：<%=application.getAttribute("name") %><br>
			${age}<br/>
		application：<%
			Enumeration es =application.getAttributeNames();
				while(es.hasMoreElements()){
					out.print(es.nextElement()+"&nbsp;&nbsp;");	
				}
			%>
			服务器信息：<%=application.getServerInfo() %>
</body>
</html>