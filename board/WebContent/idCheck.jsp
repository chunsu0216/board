<%@page import="java.net.URLEncoder"%>
<%@page import="board.com.dao.BMemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
	//ID �ߺ�Ȯ��
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String name =request.getParameter("name");
	String password = request.getParameter("password");
	boolean state = false;
	if(id != null){ 
		state = BMemberDao.memberIdCheck(id);
		if(state) response.sendRedirect("signup.jsp"); //ID �ߺ�
		else response.sendRedirect("memberInsert.jsp?id="+id+"&name="+name+"&password="+password); //ID �ߺ� X 
	}
%>
</body>
</html>