<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page language="java" import="java.util.*" %> 
<!DOCTYPE html>
<html>
<head>
<title>管理员登陆</title>
<link href="../css/register.css" rel="stylesheet"type="text/css">
<link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
<Button  class="replay" id="select" onclick="javascript:history.back(1);" >
    <i class="fa fa-reply fa-4x" ></i>
</button>
<p class="p4">管理员登陆</p>
<div class="re-section"></div>
<desc class="desc">
    <form name="form1"  method="post" action="m-r-control.jsp">
        <input type="text" id="name" name="name" >
        <input type="password" id="password" name="password" >
        <input type="submit" name="submit" value="登陆" class="btn"/>
    </form>
</desc>
</body>
</html>
