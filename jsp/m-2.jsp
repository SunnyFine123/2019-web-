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
<title>图书删除</title>
<link href="../css/m-2.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#9370db">
<header class="header">
    <p id="ph">welcome</p>
</header>
<aside class="aside">
<a href="m-1.jsp">
    <input class="bt" type="button" value="图书入库" >
</a>
<a href="m-2.jsp">
    <input class="bt" type="button" value="图书删除" style="background-color: navajowhite">
</a>
<a href="m-3.jsp">
    <input class="bt" type="button" value="图书修改">
</a>
<a href="m-4.jsp">
    <input class="bt" type="button" value="图书馆协议">
</a>
</aside>
<main class="main">
    <p class="p2">图书删除</p>
    <div class="div2">
    <form method="post" name="form2" action="m-2-control.jsp">
        <select name="select" id="select">
            <option value="ID">ID</option>
            <option value="bookname">name</option>
            <option value="writer">writer</option>
        </select>
        <input id="inp2" name="input" type="text">
            <input type="submit" id="bt2" value="确认删除">
        </form>
    </div>
  </body>
    <desc class=div3>
            <p id="p1">图书信息浏览</p><hr>
            <table width="1460px"  border="3">
                <tr style="text-align: center" ><td><b>ID号</td>
                    <td><b>书籍名称</td>
                    <td><b>书籍作者</td>
                    <td><b>仓库库存</td>
                    <td><b>存放位置</td>
                </tr>
     </desc>
</main>


<% 
try{
	DBAccessBean db=new DBAccessBean();
	db.createConn();
	db.query("select * from books");
    while(db.getRs().next()){
  	out.print("<tr>");
  	out.println("<td>"+db.getRs().getString("ID")+"</td>");
  	out.println("<td>"+db.getRs().getString("bookname")+"</td>");
  	out.println("<td>"+db.getRs().getString("writer")+"</td>");
  	out.println("<td>"+db.getRs().getString("remain_number")+"</td>");
  	out.println("<td>"+db.getRs().getString("position")+"</td>");
  }
  db.closeRs();
  db.closeStmt();
  db.closeConn();
}catch (Exception e){e.printStackTrace();}
%>
</body>
</html>