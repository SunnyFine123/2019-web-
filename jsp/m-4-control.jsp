<%@ page import="javabean.DBAccessBean"%>
<%@ page import="java.sql.*,java.io.*" %>
<%
    request.setCharacterEncoding("gb2312");
    response.setCharacterEncoding("gb2312");
    %>
<% 
   String a=request.getParameter("textarea");
   try{
   DBAccessBean db=new DBAccessBean();
   db.createConn();
   
   PreparedStatement stmt=db.getConn().prepareStatement("update text1 set agree=?where num=01");
   stmt.setString(1, a);
   stmt.execute();
   db.fun1();
   stmt.close();
   db.getConn().close();
   response.sendRedirect("m-4.jsp");
   }catch(Exception e){e.printStackTrace();}

%>