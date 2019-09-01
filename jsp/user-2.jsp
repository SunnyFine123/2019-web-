<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("gb2312");
    response.setCharacterEncoding("gb2312");
    %>
    <%@page import="javabean.BusinessBean" %>
    <%@page import="javabean.DBAccessBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/u-2.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#9370db">
<header class="header">
    <p id="ph">welcome</p>
</header>
<aside class="aside">
    <a href="user-1.jsp">
    <input class="bt" type="button" value="图书查询" >
</a>
<a href="user-2.jsp">
    <input class="bt" type="button" value="图书归还" style="background-color: navajowhite">
</a>
<a href="user-3.jsp">
    <input class="bt" type="button" value="个人信息">
</a>
<a href="user-4.jsp">
    <input class="bt" type="button" value="图书馆协议" >
</a>
</aside>
<main class="main">
    <p class="p2">图书修改</p>
     <p class="p1">图书信息浏览</p><hr>
            <table width="1460px"  border="3">
                <tr style="text-align: center" ><td><b>ID号</td>
                    <td><b>书籍名称</td>
                    <td><b>书籍作者</td>
                    <td><b>仓库库存</td>
                    <td><b>存放位置</td>
                    <td><b>还书</td>
                </tr>
</main>
<% 
String ID=request.getParameter("ID");
String bookname=request.getParameter("bookname");
String writer=request.getParameter("writer");
String remain_number=request.getParameter("remain_number");
String position=request.getParameter("position");

try{
	BusinessBean bb=new BusinessBean();
	bb.add(ID,bookname,writer,remain_number,position);
	
	
	DBAccessBean db=new DBAccessBean();
	db.createConn();
	db.query("select * from userbook");
    while(db.getRs().next()){
    	String id=db.getRs().getString("ID");
  	out.print("<tr>");
  	out.println("<td>"+db.getRs().getString("ID")+"</td>");
  	out.println("<td>"+db.getRs().getString("bookname")+"</td>");
  	out.println("<td>"+db.getRs().getString("writer")+"</td>");
  	out.println("<td>"+db.getRs().getString("remain_number")+"</td>");
  	out.println("<td>"+db.getRs().getString("position")+"</td>");
  	out.println("<td><a href='u-2-c1.jsp?x="+id+"'>还书"+id+"</a></td>");
  }
  db.closeRs();
  db.closeStmt();
  db.closeConn();
}catch (Exception e){e.printStackTrace();}
%>
</body>
</html>