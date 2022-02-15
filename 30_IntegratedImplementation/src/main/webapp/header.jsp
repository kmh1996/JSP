<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/header.css" rel="stylesheet" type="text/css" />
<link href="css/footer.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
</head>
<body>
<header>
	<ul>
		<li><a href="main.jsp">홈</a></li>
<jsp:useBean id="loginMember" class="vo.MemberVO" scope="session"/>
		<% if(loginMember.getId() != null){ %>
			<li><a href="#"><%=loginMember.getName()%></a></li>
			<li><a href="#">로그아웃</a></li>
		<%}else{ %>
		<li><a href="login.jsp">로그인</a></li>
		<li><a href="join.jsp">회원가입</a></li>		
		<%} %>
	</ul>
</header>










