<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		${name }
		<%
			request.setCharacterEncoding("UTF-8");
			String userName= request.getParameter("name");
		out.print(userName+"<br/>");
			String[] hoppys= request.getParameterValues("xingqu");
			out.print("爱好"+":");
			if(hoppys.length>0){
				for(int i=0;i<hoppys.length;i++){
					out.print(hoppys[i]+"&nbsp;&nbsp;");
				}
			}
		%>
</body>
</html>