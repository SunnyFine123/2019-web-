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
<title>图书修改</title>
<link href="../css/m-3-control.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#9370db" >
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
    <input class="bt" type="button" value="图书修改" style="background-color: navajowhite">
  </a>
  <a href="m-4.jsp">
    <input class="bt" type="button" value="图书馆协议">
  </a>
</aside>

<%
String a="";
String b="";
String c="";
String d="";
String e="";
String x=request.getParameter("x");
DBAccessBean db=new DBAccessBean();
db.createConn();
db.query("select * from userbook where ID='"+x+"'");
while(db.getRs().next()){
	 a=db.getRs().getString("ID");
	 b=db.getRs().getString("bookname");
	 c=db.getRs().getString("writer");
	 d=db.getRs().getString("remain_number");
	 e=db.getRs().getString("position");
}
%>
<main class="main">
    <p class="p2">图书修改</p>
    <desc class=div3>
            <p id="p1">图书信息浏览</p><hr>
            <table width="1060px"  border="3">
                <tr style="text-align: center" ><td><b>ID号</td>
                    <td><b>书籍名称</td>
                    <td><b>书籍作者</td>
                    <td><b>仓库库存</td>
                    <td><b>存放位置</td>
                    <td><b>选择还书</td>
                </tr>
     </desc>
 <%
 out.println("<form method='post' name='form5' action='u-2-c2.jsp'>");
 out.println(" <div class='div5'>");
 out.println("<input type='text' name='ID' value='"+a+"'>");
 out.println("<input type='text' name='bookname' value='"+b+"'>");
 out.println("<input type='text' name='writer' value='"+c+"'>");
 out.println("<input type='text' name='remain_number' value='"+d+"'>");
 out.println("<input type='text' name='position' value='"+e+"'>");
 out.println("<input type='submit' name='submit' value='确认还书'>");
 out.println(" </div>");
 out.println(" </form>");
 %>  
</main>

</body>
</html>