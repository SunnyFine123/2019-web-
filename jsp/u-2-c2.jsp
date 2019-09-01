<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("gb2312");
    response.setCharacterEncoding("gb2312");
    %>
<%@ page import="javabean.DBAccessBean" %>
<%@ page import="javabean.BusinessBean" %>
<%
try{
	String ID=request.getParameter("ID");
	DBAccessBean db=new DBAccessBean();
	db.createConn();
	db.query("select * from userbook");
	boolean col=db.getStmt().execute("delete from userbook where ID='"+ID+"'");
  	response.sendRedirect("user-2.jsp");
    db.closeRs();
    db.closeStmt();
    db.closeConn();
  
}catch (Exception e){e.printStackTrace();}
%>
