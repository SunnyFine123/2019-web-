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
<title>图书查询</title>
 <link href="../css/u-1-control.css" rel="stylesheet" type="text/css">
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#9370db">
<header class="header">
    <p id="ph">welcome</p>
</header>
<aside class="aside">
<a href="user-1.jsp">
    <input class="bt" type="button" value="图书查询" style="background-color: navajowhite">
</a>
<a href="user-2.jsp">
    <input class="bt" type="button" value="图书归还">
</a>
<a href="user-3.jsp">
    <input class="bt" type="button" value="个人信息">
</a>
<a href="user-4.jsp">
    <input class="bt" type="button" value="图书馆协议" >
</a>
</aside>
<main class="main">
    <desc class="desc">图书查询</desc>
    <form method="post" action="u-1-c2.jsp" class="div1">
        <button type="submit" id="bt-search">
            <i  class=" fa fa-search fa-2x" ></i>
        </button>
        <a href=u-1-control.jsp>
        <button  type="button" id="bt-search1">
            搜索全部图书
        </button>
        </a>
        <input id="input" type="text" name="input" >
    </form>
    <center><p class="p1">图书信息浏览</p><hr>
        <table width="1460px"  border="3">
            <tr style="text-align: center" ><td><b>ID号</td>
                <td><b>书籍名称</td>
                <td><b>书籍作者</td>
                <td><b>仓库库存</td>
                <td><b>存放位置</td>
                <td><b>借书</td>
            </tr>
</main>
<%
String a=request.getParameter("input");
DBAccessBean db=new DBAccessBean();
db.createConn();
db.query("select * from books where ID='"+a+"'");
while(db.getRs().next()){
	String id=db.getRs().getString("ID");
	 out.print("<tr>");
	  	out.println("<td>"+db.getRs().getString("ID")+"</td>");
	  	out.println("<td>"+db.getRs().getString("bookname")+"</td>");
	  	out.println("<td>"+db.getRs().getString("writer")+"</td>");
	  	out.println("<td>"+db.getRs().getString("remain_number")+"</td>");
	  	out.println("<td>"+db.getRs().getString("position")+"</td>");
	  	out.println("<td><a href='u-1-c4.jsp?x="+id+"'>借书"+id+"</a></td>");
}
%>
</body>
</html>