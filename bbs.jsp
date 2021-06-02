<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewpoint" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP 게시판 웹 사이트 (게시판)</title>
</head>
<body>
<%
	String userID = null; //로그인 정보를 담을 변수 만들어주기
	if (session.getAttribute("userID") != null ) { //id가 있으면 그 아이디 유지하게 하는 것
		userID = (String) session.getAttribute("userID");
	}
%>

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
				<li class="active"><a href="bss.jsp">게시판</a></li>
			</ul>
<%
			if (userID == null) { //id가 없다면 이 네비게이션 만들어 준다 -- 로그인과 회원가입 창
%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul> 
				</li>
			</ul>
<%				
			} else { //id 있는 사람이 볼 화면 - 로그아웃만
%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
<%
			} 
%>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #ddd">
			<thead>
				<tr>
					<th style="background-color: #eee; text-align: center;">번호</th>
					<th style="background-color: #eee; text-align: center;">제목</th>
					<th style="background-color: #eee; text-align: center;">작성자</th>
					<th style="background-color: #eee; text-align: center;">작성일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>안녕하세요</td>
					<td>홍길동</td>
					<td>2021-06-02</td>
				</tr>
			</tbody>
			</table>
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
	
</body>
</html>