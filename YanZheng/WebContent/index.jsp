<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">

</style>
<%-- <script type="text/javascript">  /* src="loadagain.js" */
function loadagain() {
	document.getElementById("a").src="<%= request.getContextPath() %>/servlet/ImageServlet";
}
</script> --%>
<title>Insert title here</title>
</head>
<body>
		<form action=" <%=request.getContextPath() %>/servlet/YanZhen">
		验证码:<input type="text" name="yz" /> <br/>
		 <img alt="验证码" id="i" src=" <%= request.getContextPath() %>/servlet/ImageServlet ">
		<a id="aa" href="javascript:loadagain()" src=" <%= request.getContextPath() %>/servlet/ImageServlet " >看不清楚</a><br/>
		<input id="a" onclick="loadagain() " type="button" value="看不清楚">
		<input type="submit" />
		</form>
</body>
</html>