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
	//�α��� üũ
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	if(BMemberDao.memberLoginCheck(id, password)){ //�α��� ����
		session.setAttribute("id", id);
		session.setMaxInactiveInterval(30);
		response.sendRedirect("board.jsp");
	}else{
		response.sendRedirect("signin.jsp"); //�α��� ����
	}
%>
</body>
</html>