<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user page</title>
<link href="../css/u-menu.css" rel="stylesheet" type="text/css">
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
    <input class="bt" type="button" value="图书馆协议">
  </a>
</aside>
<main class="main">
    <div class="container">
        <div class="list" style=" left:-600px;">
            <img src="../photo/timg%20(4).jpg">
            <img src="../photo/pp1.jpg">
            <img src="../photo/timg%20(3).jpg">
            <img src="../photo/timg%20(4).jpg">
            <img src="../photo/timg%20(5).jpg">
            <img src="../photo/pp1.jpg">
        </div>
        <ul class="dots">
            <li index=1 class="active dot"></li>
            <li index=2 class="dot"></li>
            <li index=3 class="dot"></li>
            <li index=4 class="dot"></li>
            <li index=5 class="dot"></li>
        </ul>
        <div class="pre"><</div>
        <div class="next">></div>
    </div>
</main>
<script src="../js/u-menu.js" type="text/javascript"></script>
</body>
</html>