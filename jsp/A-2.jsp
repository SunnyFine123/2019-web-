<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*"%>
   <%
    request.setCharacterEncoding("gb2312");
    response.setCharacterEncoding("gb2312");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form class="div1" action="A-1.jsp">
        <button type="submit" id="bt-search">
            <i  class=" fa fa-search fa-2x" ></i>
        </button>
        <a href=u-1-control.jsp>
        <button  type="button" id="bt-search1">
            搜索全部图书
        </button>
        </a>
        <input id="input" type="text"  name="input">
    </form>
</body>
</html>