<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<jsp:useBean id="date" class="java.util.Date" ></jsp:useBean>
				<c:set var="hour" value="${date.getHours() }" />
				<c:set var="color" value="red" ></c:set>
				<c:if test="${hour>12 }">
				<c:set var="color" value="blue" ></c:set>
				</c:if>
				<font color="${color }" >
				<c:choose>
					<c:when test="${hour<=12}">
						早上好！
					</c:when>
						<c:otherwise>
							下午好！
						</c:otherwise>
				</c:choose>
				</font>
			
				
				
			
</body>
</html>