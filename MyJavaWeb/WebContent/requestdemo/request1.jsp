<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp内置对象——request对象</h1><hr/>
		<form action="responsedemo.jsp" method="post">
		书名：<input type="text" name="name" /><br/>
		数量：<input type="checkbox" name="xingqu" value="读书" />读书 
		<input type="checkbox" name="xingqu" value="音乐" />音乐
		<input type="checkbox" name="xingqu" value="上网" />上网
		<input type="checkbox" name="xingqu" checked="checked" value="旅游" />旅游<br/>
		&nbsp;&nbsp;&nbsp;<input type="submit" />
		
		</form>
</body>
</html>