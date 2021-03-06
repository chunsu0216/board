<%@page import="board.com.dao.BoardDao"%>
<%@page import="board.com.model.BoardBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC >
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Start Simple Web</title>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/clean-blog.css" rel="stylesheet">
<link href="css/board.css" rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,70italic'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript" src="/board/js/member.js" charset="UTF-8"></script>
<body>
<%
	response.setCharacterEncoding("EUC-KR");
	String id = (String)session.getAttribute("id");
	List<BoardBean>list = BoardDao.selectList();
%>
<%=id %>
<%-- <jsp:include page="header.jsp"></jsp:include> --%>
<!-- Navigation -->
	<nav class="navbar navbar-default navbar-custom navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="signin.jsp">Start Simple Web</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
				<%
					if(id != null){
				%>
					<li><a href="board.jsp">Board</a></li>
					<li><a href="board.jsp">LogOut</a><%-- <%session.removeAttribute("id");%> --%></li>
					<li><a href="mypage.jsp">Mypage</a></li>
				<%
					}else{
				%>
					<li><a href="board.jsp">Board</a></li>b
					<li><a href="signin.jsp">LogIn</a></li>
				<%
					}
				%>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>


	<!-- Page Header -->
	<!-- Set your background image for this header on the line below. -->
	<header class="intro-header"
		style="background-image: url('img/about-bg.jpg'); height: 200px">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
					<div class="site-heading"
						style="margin-top: 10px; padding-top: 35px; padding-bottom: 35px">
						<h2>SAMPLE</h2>
						<span class="subheading">BULLETIN BOARD</span>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="board-field">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="board-toolbar" 	style="text-align: right; margin-bottom: 20px">
				<%
					if(id != null){
				%>
				<a href="write.jsp" class="btn btn-primary btn-sm"><i
					class="glyphicon glyphicon-pencil" style="margin-right: 15px"></i>쓰기</a>
				<%
					}else{
				%>
					<a href="signin.jsp" class="btn btn-primary btn-sm"><i
					class="glyphicon glyphicon-pencil" style="margin-right: 15px"></i>쓰기</a>
				<%
					}
				%>
			</div>
			<%
				for(int i = 0; i < list.size(); i++){
					BoardBean boardBean = list.get(i);
			%>
			<div class="list-group">

				<a href="info.jsp?no=<%=boardBean.getNo() %>" class="list-group-item">
					<div class="board-title">
							<%=boardBean.getTitle() %>  <!-- <span class="badge">New</span> -->
					</div>
					<div class="board-meta"
						style="font-weight: 400; font-size: 1.2rem; color: #404040">
						<p>
							<i class="glyphicon glyphicon-user"></i> <%=boardBean.getId() %> 님 <i
								class="glyphicon glyphicon-comment"></i> 0 <i
								class="glyphicon glyphicon-ok"></i> 20 <i
								class="glyphicon glyphicon-time"></i> <%=boardBean.getRegdate() %>
						</p>
					</div>
 				</a>
 		<!-- 
				<a href="info.jsp" class="list-group-item">
					<div class="board-title">
						<span class="board-category">[JAVASCRIPT]</span>
							스크립트 태그를 마지막에 쓰는 이유<span class="badge">New</span>
					</div>
					<div class="board-meta"
						style="font-weight: 400; font-size: 1.2rem; color: #404040">
						<p>
							<i class="glyphicon glyphicon-user"></i> 미립 님 <i
								class="glyphicon glyphicon-comment"></i> 0 <i
								class="glyphicon glyphicon-ok"></i> 20 <i
								class="glyphicon glyphicon-time"></i> 2016.03.31 21:55
						</p>
					</div>
				</a>
				<a href="info.jsp" class="list-group-item">
					<div class="board-title">
						<span class="board-category">[JAVA]</span> String
							과 StringBuffer의 차이 <span class="badge">New</span>
					</div>
					<div class="board-meta"
						style="font-weight: 400; font-size: 1.2rem; color: #404040">
						<p>
							<i class="glyphicon glyphicon-user"></i> 미립 님 <i
								class="glyphicon glyphicon-comment"></i> 0 <i
								class="glyphicon glyphicon-ok"></i> 38 <i
								class="glyphicon glyphicon-time"></i> 2016.03.31 21:55
						</p>
					</div>
				</a>
				<a href="info.jsp" class="list-group-item">
					<div class="board-title">
						<span class="board-category">[JAVA]</span> Length
							vs Length() 
					</div>
					<div class="board-meta"
						style="font-weight: 400; font-size: 1.2rem; color: #404040">
						<p>
							<i class="glyphicon glyphicon-user"></i> 미립 님 <i
								class="glyphicon glyphicon-comment"></i> 0 <i
								class="glyphicon glyphicon-ok"></i> 11 <i
								class="glyphicon glyphicon-time"></i> 2016.03.31 21:55
						</p>
					</div>
				</a>
				<a href="info.jsp" class="list-group-item">
					<div class="board-title">
						<span class="board-category">[JAVA]</span> JAVA
							8.0 함수형 프로그래밍 과 람다식 
					</div>
					<div class="board-meta"
						style="font-weight: 400; font-size: 1.2rem; color: #404040">
						<p>
							<i class="glyphicon glyphicon-user"></i> 미립 님 <i
								class="glyphicon glyphicon-comment"></i> 0 <i
								class="glyphicon glyphicon-ok"></i> 32 <i
								class="glyphicon glyphicon-time"></i> 2016.03.31 21:55
						</p>
					</div>
				</a>
				<a href="info.jsp" class="list-group-item">
					<div class="board-title">
						<span class="board-category">[DATABASE]</span>
							성능고도화의 원리 
					</div>
					<div class="board-ma href="#"eta"
						style="font-weight: 400; font-size: 1.2rem; color: #404040">
						<p>
							<i class="glyphicon glyphicon-user"></i> 미립 님 
							<i class="glyphicon glyphicon-comment"></i> 0 
							<i class="glyphicon glyphicon-ok"></i> 17 
							<i class="glyphicon glyphicon-time"></i> 2016.03.31 21:55
						</p>
					</div>
				</a>
			</div> -->
			<%
				}
			%>
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<ul class="pagination">
					<li><a href="#">이전</a></li>
					<li><a href="#">1</a></li>
					<li class="active"><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">...</a></li>
					<li><a href="#">19</a></li>
					<li><a href="#">다음</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
					<ul class="list-inline text-center">
						<li><a href="#"> <span class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-envelope-o fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li><a href="#"> <span class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-home fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li><a href="#"> <span class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-github fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
					</ul>
					<p class="copyright text-muted">Copyright &copy;2016 SIST. All
						rights reserved | code by milib</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="js/clean-blog.min.js"></script>

</body>

</html>
