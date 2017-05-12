<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Insert title here</title>
<style type="text/css">
input[type=text] {
		width: 270px;
	height: 42px;
	font-size: 20px;
	background: rgba(179, 191, 189, 0.53);
	border: scrollbar 1px red; 
	
}
input:focus {
	outline: none;
	box-shadow: 0 2px 3px 0 rgba(0, 0, 0, .1) inset, 0 2px 7px 0
		rgba(0, 0, 0, .2)
}


</style>
</head>
<body>
<form method="post">
<div style="font-size:30px;">
		成绩：<input  name="a" type="text"/>
		</div>
		<input style="margin-left: 400px;" type="submit" value="提交"  />
		<input type="reset" value="重置" />
		</form>
		<c:set var="score" value="${param.a+0}" ></c:set> <!-- 加0后 EL会自动转换 一开始是String 也可以在下面的数字后面加.0 -->
		<c:set var="color" value="red" ></c:set>
		<c:if test="${score>=60 }">
				<c:set var="color" value="blue"></c:set>
		</c:if><br/>
		
		<font color="${color }" size="30px;" >
				<c:choose>
				<c:when test="${score>100||score<0 }">
					请输入0~100之间的数
				</c:when>
				<c:when test="${score>90 }">
						成绩很好
				</c:when>
				<c:when test="${score>=60 }">
					及格了
				</c:when>
				<c:when test="${score==0 }">
							
				</c:when>
				<c:otherwise>
						不及格
				</c:otherwise>
				</c:choose>
		
		</font>

		
</body>
</html>