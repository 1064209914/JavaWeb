<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.hxd.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="person" class="com.hxd.Person" ></jsp:useBean>
</head>
<body>
		
		<%-- <c:set var="name" value="" ></c:set> --%>
		名字:<c:out value="${name }" default="小明"/><br>
		<c:set target="${person }" property="name" value="黄敏" />
		<c:out value="${person.name }"></c:out><br>
		<c:catch var="Error">
		<c:set var="math" value="${param.c+1 }" />
		<c:out value="${math }"/>
		</c:catch>
		<c:out value="${ Error}"></c:out>
</body>
</html>