<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Insert title here</title>
</head>
<body>
		<% 
			int[] array1={1,2,4,5,3};
			request.setAttribute("one", array1);
		%>
		<c:forEach var="array" items="${one}" varStatus="status" step="2" >
		${status.count }、${array }<br/>
		</c:forEach>
		<hr/>
		<%
			String str1="hkjhkj,ggghh!gyhjgj,pp";
			request.setAttribute("str", str1);
		%>
		<c:forTokens items="${str }" delims=", !" varStatus="status">
			${status.current }<br>
		</c:forTokens>
</body>
</html>