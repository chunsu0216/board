<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<!-- <link href="css/login.css" rel="stylesheet"> -->
<link href="css/clean-blog.css" rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
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
<body style="background-image: url(img/back.jpg)">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript" src="/board/js/member.js" charset="UTF-8"></script>
<script type="text/javascript">
</script>
	<%-- <jsp:include page="header.jsp"></jsp:include> --%>
	<div class="container" style="margin-top: 120px">
		<div class="row">
			<div class="main">
				<h3>
					<a>SAMPLE SIGN IN</a>
				</h3>

				<form name="login" method="oost" action="loginAction.jsp">
					<div class="form-group">
						<input type="text" placeholder="ID" class="form-control"
							id="id" name="id"/>

					</div>
					<div class="form-group">
						<!--<a class="pull-right" href="#">Esqueci a senha</a>-->
						<input type="password" placeholder="PASSWORD " class="form-control"
							id="password" name="password">
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<a href="#" id="signin" class="btn btn-sm btn-danger btn-block">SIGN IN</a>
						</div>
					</div>
					<div class="login-or">
						<hr class="hr-or">
						<span class="span-or">or</span>
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<a href="signup.jsp" class="btn btn-sm btn-info btn-block">SIGN UP</a>
						</div>
					</div>
					<h6 style="font-weight: 400;font-size: 0.85714rem; color: gray " align="center">
						비밀번호가 기억나지 않으세요? <u><a href="#">비밀번호재설정</a></u>
					</h6>
				</form>
				</div>
			</div>
		</div>
	<!-- Footer -->
	<!-- 	<footer>
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
 -->
</body>

</html>