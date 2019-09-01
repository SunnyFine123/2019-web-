<%@ page import="javabean.DBAccessBean"%>
<%@ page import="java.sql.*,java.io.*" %>
<%
    request.setCharacterEncoding("gb2312");
    response.setCharacterEncoding("gb2312");
    %>
<% 
String id=request.getParameter("ID");
String bookname=request.getParameter("bookname");
String writer=request.getParameter("writer");
String remain_number=request.getParameter("remain_number");
String position=request.getParameter("position");

   try{
   DBAccessBean db=new DBAccessBean();
   db.createConn();
   PreparedStatement stmt=db.getConn().prepareStatement("update books set ID=?,bookname=?,writer=?,remain_number=?,position=?where ID="+id+"");
   stmt.setString(1, id);
   stmt.setString(2,bookname);
   stmt.setString(3,writer);
   stmt.setString(4,remain_number);
   stmt.setString(5,position);
   stmt.execute();
   stmt.close();
   response.sendRedirect("m-3.jsp");
   }catch(Exception e){e.printStackTrace();}

%>