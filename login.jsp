<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewpoint" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
<!-- 						active는 하나만 온다!! 지금 실행중-->
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
<!-- 	container - 감싸준다 -->
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px">
				<form method="post" action="loginAction.jsp">
<!-- 				숨길거라서 post -->
					<h3 style="text-align: center">로그인 화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" 
						name="userID" maxlength="20">
<!-- 						placeholder는 아무것도 입력하지 않았을 때 표시되는 것 (default 같은?) -->
<!-- 							maxlength로 최대 몇글자 지정해주기 -->
						<input type="password" class="form-control" placeholder="비밀번호" 
						name="userPassword" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="로그인">
<!-- 																	value값=표시되는 값 -->
				</form>	
			</div>
		</div>
		<div class="col-lg-4"></div>
	
	</div>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
	
</body>
</html>