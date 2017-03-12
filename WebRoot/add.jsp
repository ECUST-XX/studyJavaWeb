<%@ page language="java" import="java.io.*,java.util.*,com.xx.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


	int table = Integer.parseInt(request.getParameter("table"));
	
	
	student stu = new student();
	course cou = new course();
	classes cla = new classes();
	SselectC ss = new SselectC();
	String input = null;
	
	
	switch(table){
	case 1:
	
	input = "<div>"
                +"<input type=\"hidden\" class=\"form-control\" name=\"table\" placeholder=\"table\" value=\"1\"  />"
              +"</div>"
              +"<div>"
                +"<input type=\"hidden\" class=\"form-control\" name=\"id\" placeholder=\"id\"   />"
              +"</div>"
              +"<div>"
                +"<label style=\"float:left;\">名字:</label><input type=\"text\" class=\"form-control\" name=\"name\" placeholder=\"名字\"  required />"
              +"</div>"
              +"<div>"
                +"<label style=\"float:left;\">班级号：</label><input type=\"text\" class=\"form-control\" name=\"cid\" placeholder=\"班级号\"  required />"
              +"</div>"
              +"<div>"
                +"<label style=\"float:left;\">学号：</label><input type=\"text\" class=\"form-control\" name=\"sid\" placeholder=\"学号\"  required />"
              +"</div>"
              +"<div>"
                +"<label style=\"float:left;\">学院：</label><input type=\"text\" class=\"form-control\" name=\"college\" placeholder=\"学院\"  required />"
              +"</div>"
              +"<div>"
                +"<label style=\"float:left;\">密码：</label><input type=\"password\" class=\"form-control\" name=\"password\" placeholder=\"密码\"  required />"
              +"</div>";
	
	break;
	case 2:
	
	input = "<div>"
	          +"<input type=\"hidden\" class=\"form-control\" name=\"table\" placeholder=\"table\" value=\"2\"  />"
              +"</div>"
              +"<div>"
                +"<input type=\"hidden\" class=\"form-control\" name=\"id\" placeholder=\"id\"  required />"
              +"</div>"
              +"<div>"
                +"<label style=\"float:left;\">班级名称：</label><input type=\"text\" class=\"form-control\" name=\"classname\" placeholder=\"班级名称\"  required />"
              +"</div>";
	break;
	case 3:
	
	input = "<div>"
	          +"<input type=\"hidden\" class=\"form-control\" name=\"table\" placeholder=\"table\" value=\"3\"  />"
              +"</div>"
              +"<div>"
                +"<input type=\"hidden\" class=\"form-control\" name=\"id\" placeholder=\"id\"  required />"
              +"</div>"
              +"<div>"
                +"<label style=\"float:left;\">课程名称：</label><input type=\"text\" class=\"form-control\" name=\"coursename\" placeholder=\"课程名称\"  required />"
              +"</div>"
              +"<div>"
                +"<label style=\"float:left;\">学期：</label><input type=\"text\" class=\"form-control\" name=\"term\" placeholder=\"学期\"  required />"
              +"</div>";
	break;
	case 4:
	
	input = "<div>"
	          +"<input type=\"hidden\" class=\"form-control\" name=\"table\" placeholder=\"table\" value=\"4\"  />"
              +"</div>"
              +"<div>"
                +"<input type=\"hidden\" class=\"form-control\" name=\"id\" placeholder=\"id\"  required />"
              +"</div>"
              +"<div>"
                +"<label style=\"float:left;\">课程号：</label><input type=\"text\" class=\"form-control\" name=\"cid\" placeholder=\"课程号\"  required />"
              +"</div>"
              +"<div>"
                +"<label style=\"float:left;\">学号：</label><input type=\"text\" class=\"form-control\" name=\"sid\" placeholder=\"学号\"  required />"
              +"</div>"
               +"<div>"
                +"<label style=\"float:left;\">分数：</label><input type=\"text\" class=\"form-control\" name=\"score\" placeholder=\"分数\"  required />"
              +"</div>";
	break;
	}







%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<link rel="stylesheet" href="bootstrap/dist/css/bootstrap.min.css" >
	<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" >
	<link rel="stylesheet" href="animate/animate.min.css" >
	
	 <link href="custom.min.css" rel="stylesheet">
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	
	

  </head>
  
  <body class="login">
  
 <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form action="create.jsp" method="post">
              <h1>Create</h1>
               <%=input %>
              <div>
                <button class="btn btn-default submit" >submit</button>
                
              </div>

              <div class="clearfix"></div>

              <div class="separator">
               

                <div>
                  <h1><i class="fa fa-paw"></i> XX</h1>
                  
                </div>
              </div>
            </form>
          </section>
        </div>
  </body>
</html>