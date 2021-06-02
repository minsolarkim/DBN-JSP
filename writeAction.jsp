<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page" />
<jsp:setProperty name="bbs" property="bbsTitle" />
<jsp:setProperty name="bbs" property="bbsContent" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
<%
	//----로그인이 된 사람은 회원가입 할 수 없도록 하는 거 
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	if (userID == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 해주세요.')");
		script.println("location.href = 'login.jsp'");
		script.println("</script>");
	} else { //로그인이 되면 여기로 다 오게 하기
		if (bbs.getBbsTitle() == null || bbs.getBbsContent() == null) {
			//제목이나 내용이 빈 칸 이면
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('입력이 안 된 사항이 있습니다.')");
					script.println("history.back()");
					script.println("</script>");
					
		} else { //실제로 DB에 등록
			BbsDAO bbsDAO = new BbsDAO();
			int result = bbsDAO.write(bbs.getBbsTitle(), userID, bbs.getBbsContent());
			if (result == -1) { //데이터 베이스 오류 
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글쓰기에 실패했습니다..')");
				script.println("history.back()");
				script.println("</script>");
			}
			else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글쓰기 성공!')");
				script.println("location.href = 'bbs.jsp'");
				script.println("</script>");
			}
			
		}
	}


	
	
%>
</body>
</html>