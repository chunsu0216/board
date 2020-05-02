<%@page import="board.com.dao.BMemberDao"%>
<%@page import="board.com.model.BMemberBean"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript" src="/board/js/member.js" charset="UTF-8"></script>
</head>
<body>
<%
	request.setCharacterEncoding("EUC-KR");
	BMemberBean bean = new BMemberBean();
	bean.setId(request.getParameter("id"));
	bean.setName(request.getParameter("name"));
	bean.setPassword(request.getParameter("password"));
	BMemberDao.insertMember(bean);
	response.sendRedirect("signin.jsp");
%>
</body>
</html>