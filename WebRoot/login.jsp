<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,com.xx.*" %>
<%

	int sid = Integer.parseInt(request.getParameter("sid"));
	
	String pw = request.getParameter("password");
	
	
		student stu = new student();
		int index = stu.login(sid,pw);
		
		if(index==0&&(session.getAttribute("sid")==null)){
			
			out.print("登陆失败，5秒后跳转");
			out.println("<meta http-equiv=\"refresh\" content='5; url=login.jsp'>");
			 
		}else if(session.getAttribute("sid")!=null){
			out.println(session.getAttribute("sid"));
				out.print("已经登陆");
			
		}else{
			session.setAttribute("sid", index);
			out.print("登陆成功");
			}
	
	 
%>
<html>
<head>
   
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<link rel="stylesheet" type="text/css" href="bootstrap/dist/css/bootstrap.min.css">
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>登陆</title>
</head>
<body>
<a href="logout.jsp" type="button" class="btn btn-primary">退出登陆</a>
<a href="password.jsp" type="button" class="btn btn-danger">重置密码</a>
 <div class="container" style="margin:5% 15% 0% 15% ;">
 	<h1>搜索目录</h1>
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