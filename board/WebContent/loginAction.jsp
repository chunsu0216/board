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
	//로그인 체크
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	if(BMemberDao.memberLoginCheck(id, password)){ //로그인 성공
		session.setAttribute("id", id);
		session.setMaxInactiveInterval(30);
		response.sendRedirect("board.jsp");
	}else{
		response.sendRedirect("signin.jsp"); //로그인 실패
	}
%>
</body>
</html>