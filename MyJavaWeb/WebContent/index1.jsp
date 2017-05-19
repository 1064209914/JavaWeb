<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
td {
	width: 500px;
}
</style>
</head>
<body>
		<form action="servlet/relogin" method="post">
			<table  border="soild">
				<tr> <td>姓名</td> <td> <input type="text" name="userName"> </td> </tr>
				<tr> <td>年龄</td> <td> <input type="text" name="userAge"> </td> </tr>
				<tr> <td>生日</td> <td> <input type="date" name="birthday"> </td> </tr>
				<tr> <td>性别</td> <td> <input type="radio" name="sex" value="男" checked="checked">男 &nbsp;<input type="radio" value="女" name="Sex">女 </td> </tr>
				<tr> <td>爱好</td> <td> <input type="checkbox" name="hoppys" value="游泳"  >游泳<input type="checkbox" name="hoppys" value="看书" >看书<input type="checkbox" name="hoppys" checked="checked" value="上网"  >上网 </td> </tr>
				<tr> <td>自我介绍 </td> <td> <textarea name="jieshao" rows="10" cols="20"></textarea> </td> </tr>
			</table>
			<input type="submit" value="提交" />&nbsp;&nbsp;&nbsp;<input type="reset" />
		</form>
</body>
</html>