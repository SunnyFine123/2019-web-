<%@ page import="javabean.DBAccessBean" %>
<%@ page import="java.sql.*,java.io.*" %>
<%
    request.setCharacterEncoding("gb2312");
    response.setCharacterEncoding("gb2312");
    %>
<% 
try{
	request.setCharacterEncoding("utf-8");
	String dro=request.getParameter("select");
	String input=request.getParameter("input");
	DBAccessBean db=new DBAccessBean();
	db.createConn();
	db.query("select * from books");
	boolean col=db.getStmt().execute("delete from books where "+dro+"='"+input+"'");
  	response.sendRedirect("m-2.jsp");
    db.closeRs();
    db.closeStmt();
    db.closeConn();
  
}catch (Exception e){e.printStackTrace();}
%>
