<%@page import="board.com.dao.BoardDao"%>
<%@page import="board.com.model.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%	//게시글 INSERT 후 board.jsp 이동
	response.setCharacterEncoding("EUC-KR");
	BoardBean boardBean = new BoardBean();
	boardBean.setId(request.getParameter("id"));
	boardBean.setPassword(request.getParameter("password"));
	boardBean.setTitle(request.getParameter("title"));
	boardBean.setContents(request.getParameter("contents"));
	boardBean.setFilename(request.getParameter("filename"));
	BoardDao.boardInsert(boardBean);
	response.sendRedirect("board.jsp");
%>
</body>
</html>