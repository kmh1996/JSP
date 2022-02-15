<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.naming.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Context init = new InitialContext();
		DataSource ds 
			= (DataSource)init.lookup("java:comp/env/jdbc/MySqlDB");
		Connection conn = ds.getConnection();
		String contextPath =  request.getContextPath();
		response.sendRedirect(contextPath+"/guestbook/guestbook_list.jsp");
		out.print("DB 연결 성공");
	}catch(Exception e){
		out.print("DB 연결 실패");
	}
%>
<%-- <jsp:forward page="guestbook/guestbook_list.jsp" /> --%>





