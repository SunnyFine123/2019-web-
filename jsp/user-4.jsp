<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javabean.DBAccessBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/user-4.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#9370db">
<header class="header">
    <p id="ph">welcome</p>
</header>
<aside class="aside">
<a href="user-1.jsp">
    <input class="bt" type="button" value="图书查询">
</a>
<a href="user-2.jsp">
    <input class="bt" type="button" value="图书归还">
</a>
<a href="user-3.jsp">
    <input class="bt" type="button" value="个人信息">
</a>
<a href="user-4.jsp">
    <input class="bt" type="button" value="图书馆协议" style="background-color: navajowhite">
</a>
</aside>
<main class="main">
<p class="p2">图书馆协议</p>
<div class="div4">
<P class="p4">
<% 
try{
	DBAccessBean db=new DBAccessBean();
	db.createConn();
	db.query("select * from text");
    while(db.getRs().next()){
  	out.print("<tr>");
  	out.println("<td>"+db.getRs().getString("agree")+"</td>");
  }
  db.closeRs();
  db.closeStmt();
  db.closeConn();
}catch (Exception e){e.printStackTrace();}
%>
</P>
</div>
</main>
</body>
</html>