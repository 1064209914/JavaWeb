<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action=" <%=request.getContextPath()%>/servlet/deleteUser"
		method="post">
		<font color="red">${requestScope.Error }</font><br /> <font
			color="red">${requestScope.error }</font><br /> 请输入要删除的姓名： <input
			type="text" name="name" /> <input type="submit" />
	</form>
</body>
</html>