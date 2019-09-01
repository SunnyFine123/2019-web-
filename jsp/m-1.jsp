<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="javabean.DBAccessBean" %>
    <%
    request.setCharacterEncoding("gb2312");
    response.setCharacterEncoding("gb2312");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书入库</title>
<link href="../css/m-1.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#9370db">
<header class="header">
    <p id="ph">welcome</p>
</header>
<aside class="aside">
<a href="m-1.jsp">
    <input class="bt" type="button" value="图书入库" style="background-color: navajowhite">
</a>
<a href="m-2.jsp">
    <input class="bt" type="button" value="图书删除">
</a>
<a href="m-3.jsp">
    <input class="bt" type="button" value="图书修改">
</a>
<a href="m-4.jsp">
    <input class="bt" type="button" value="图书馆协议">
</a>
</aside>

<main class="main">
    <form id="form" name="form2" action="m-1-control.jsp" method="post">
        <table border="1" id="table" width="85%">
            <tr >
                <td colspan="11" ><p class="p2">图书入库</p></td></tr>
                <td>编号:</td><td><input type="text" name="ID"></td>
                <td>书名:</td><td><input type="text" name="bookname"></td>
                <td>作家:</td><td><input type="text" name="writer"></td>
                <td>库存:</td><td><input type="text" name="remain_number"></td>
                <td>摆放位置:</td><td><input type="text" name="position"></td>
                <td ><button type="submit" class="btn2">提交</button></td>
            </tr>
        </table>
        <p class="p1">图书信息浏览</p><hr>
            <table width="1460px"  border="3">
                <tr style="text-align: center" ><td><b>ID号</td>
                    <td><b>书籍名称</td>
                    <td><b>书籍作者</td>
                    <td><b>仓库库存</td>
                    <td><b>存放位置</td>
                </tr>
    </form>

<%
  DBAccessBean a=new DBAccessBean();
            a.createConn();
            a.query("select * from books");
    while(a.getRs().next()){
  	out.print("<tr>");
  	out.println("<td>"+a.getRs().getString("ID")+"</td>");
  	out.println("<td>"+a.getRs().getString("bookname")+"</td>");
  	out.println("<td>"+a.getRs().getString("writer")+"</td>");
  	out.println("<td>"+a.getRs().getString("remain_number")+"</td>");
  	out.println("<td>"+a.getRs().getString("position")+"</td>");
  }
  a.closeRs();
  a.closeStmt();
  a.closeConn();
  %>
  
</main>
</body>
</html>