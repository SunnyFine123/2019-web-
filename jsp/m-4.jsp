<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javabean.DBAccessBean" %>
<%
    request.setCharacterEncoding("gb2312");
    response.setCharacterEncoding("gb2312");
    %>
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
<a href="m-1.jsp">
    <input class="bt" type="button" value="图书入库">
</a>
<a href="m-2.jsp">
    <input class="bt" type="button" value="图书删除">
</a>
<a href="m-3.jsp">
    <input class="bt" type="button" value="图书修改">
</a>
<a href="m-4.jsp">
    <input class="bt" type="button" value="图书馆协议" style="background-color: navajowhite">
</a>
</aside>
<main class="main">
<p class="p2">图书馆协议</p>
<div class="div4">
<P class="p4">
<% 
try{
	String a="";
	DBAccessBean db=new DBAccessBean();
	db.createConn();
	db.query("select * from text1");
    while(db.getRs().next()){
  	a=db.getRs().getString("agree");
  	out.print("<form method='post' name='form' action='m-4-control.jsp' >");
  	out.print("<textarea style='position:relative;margin-left:180px; font-size:20px; width: 400px;height: 200px;resize: none;' name='textarea' >'"+a+"'</textarea>");
    //out.print("<input type='text' name='textarea' value='"+a+"'>");
  	out.print("<input style='position:fixed;top:510px;left:1000px;background-color:red;width:90px;height:60px;' type='submit' value='确认修改'>");
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