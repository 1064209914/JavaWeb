<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>更新用户的信息</h2>
	<font color="red">${requestScope.Error }</font><br /> 
	<font color="red">${requestScope.error }</font><br /> 
		<form action=" <%= request.getContextPath()%>/servlet/updateUser" method="post" >
			<table>
		 	<tr> <td>需要更新的用户的姓名</td> <td> <input type="text" name="name" /> </td> </tr>
		 	<tr> <td>更新后年龄</td> <td> <input type="text" name="age" /></td> </tr>
		 	<tr> <td>更新后手机号</td> <td> <input type="text" name="phone" /></td> </tr>
		 	</table>	
		 	<input type="submit" /> <input type="reset" />
		</form>
</body>
</html>