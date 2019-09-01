<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("gb2312");
    response.setCharacterEncoding("gb2312");
    %>
<%@ page import="javabean.DBAccessBean" %>
<%@ page import="javabean.BusinessBean" %>
<%
String ID=request.getParameter("ID");
String bookname=request.getParameter("bookname");
String writer=request.getParameter("writer");
String remain_number=request.getParameter("remain_number");
String position=request.getParameter("position");
response.sendRedirect("user-1.jsp");
BusinessBean bb=new BusinessBean();
bb.addtouser(ID,bookname,writer,remain_number,position);
%>
