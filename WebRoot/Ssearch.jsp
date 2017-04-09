<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="login.jsp"%>



<html>
<head>
   
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<link rel="stylesheet" type="text/css" href="bootstrap/dist/css/bootstrap.min.css">
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>登陆</title>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">搜索目录</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">搜索目录</a>
    </div>
    <div id="navbar" class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li><a href="logout.jsp">退出登陆</a></li>
        <li><a href="password.jsp">重置密码</a></li>
      </ul>
    </div>
  </div>
</nav>

 <div class="container" style="position: relative;top: 15%;">
	<form method="post" action="search.jsp">
	  <div class="form-group">
	    <label for="exampleInputEmail1">班级号查询学生信息</label>
	    <input type="text" class="form-control" name="id" placeholder="班级号">
	    <input type="hidden" class="form-control" name="method" value="1">
	  </div>
	  <button type="submit" class="btn btn-default">Submit</button>
	  </form>
	  
	  <form method="post" action="search.jsp">
	  <div class="form-group">
	    <label for="exampleInputEmail1">学号查询学生信息</label>
	    <input type="text" class="form-control" name="id" placeholder="学号">
	    <input type="hidden" class="form-control" name="method" value="2">
	  </div>
	  <button type="submit" class="btn btn-default">Submit</button>
	  </form>
	  
	  <form method="post" action="search.jsp">
	  <div class="form-group">
	    <label for="exampleInputEmail1">按学期查询成绩</label>
	    <input type="text" class="form-control" name="id" placeholder="学期">
	    <input type="hidden" class="form-control" name="method" value="3">
	  </div>
	  <button type="submit" class="btn btn-default">Submit</button>
	  </form>
	  
	  <form method="post" action="search.jsp">
	  <div class="form-group">
	    <label for="exampleInputEmail1">按课程查询成绩</label>
	    <input type="text" class="form-control" name="id" placeholder="课程号">
	    <input type="hidden" class="form-control" name="method" value="4">
	  </div>
	  <button type="submit" class="btn btn-default">Submit</button>
	  </form>
	  
	 
</div>

 
</body>
</html>