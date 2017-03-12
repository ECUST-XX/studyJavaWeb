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
	int id1 = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	byte[] bs1 = name.getBytes("ISO-8859-1");
	name = new String(bs1,"utf-8");
	int cid = Integer.parseInt(request.getParameter("cid"));
	int sid = Integer.parseInt(request.getParameter("sid"));
	String college = request.getParameter("college");
	byte[] bs12 = college.getBytes("ISO-8859-1");
	college = new String(bs12,"utf-8");
	
	input = "<div>"
                +"<input type=\"hidden\" class=\"form-control\" name=\"table\" placeholder=\"table\" value=\"1\"  />"
              +"</div>"
              +"<div>"
                +"<input type=\"hidden\" class=\"form-control\" name=\"id\" placeholder=\"id\" value=\""+id1+"\"  />"
              +"</div>"
              +"<div>"
                +"<label style=\"float:left;\">名字:</label><input type=\"text\" class=\"form-control\" name=\"name\" placeholder=\"名字\" value=\""+name+"\" required />"
              +"</div>"
              +"<div>"
                +"<label style=\"float:left;\">班级号：</label><input type=\"text\" class=\"form-control\" name=\"cid\" placeholder=\"班级号\" value=\""+cid+"\" required />"
              +"</div>"
              +"<div>"
                +"<label style=\"float:left;\">学号：</label><input type=\"text\" class=\"form-control\" name=\"sid\" placeholder=\"学号\" value=\""+sid+"\" required />"
              +"</div>"
              +"<div>"
                +"<label style=\"float:left;\">学院：</label><input type=\"text\" class=\"form-control\" name=\"college\" placeholder=\"学院\" value=\""+college+"\" required />"
              +"</div>";
	
	break;
	case 2:
	int id2 = Integer.parseInt(request.getParameter("id"));
	String classname = request.getParameter("classname");
	byte[] bs2 = classname.getBytes("ISO-8859-1");
	classname = new String(bs2,"utf-8");
	
	input = "<div>"
	          +"<input type=\"hidden\" class=\"form-control\" name=\"table\" placeholder=\"table\" value=\"2\"  />"
              +"</div>"
              +"<div>"
                +"<input type=\"hidden\" class=\"form-control\" name=\"id\" placeholder=\"id\" value=\""+id2+"\" required />"
              +"</div>"
              +"<div>"
                +"<label style=\"float:left;\">班级名称：</label><input type=\"text\" class=\"form-control\" name=\"classname\" placeholder=\"班级名称\" value=\""+classname+"\" required />"
              +"</div>";
	break;
	case 3:
	int id3 = Integer.parseInt(request.getParameter("id"));
	String coursename = request.getParameter("coursename");
	byte[] bs3 = coursename.getBytes("ISO-8859-1");
	coursename = new String(bs3,"utf-8");
	int term = Integer.parseInt(request.getParameter("term"));
	input = "<div>"
	          +"<input type=\"hidden\" class=\"form-control\" name=\"table\" placeholder=\"table\" value=\"3\"  />"
              +"</div>"
              +"<div>"
                +"<input type=\"hidden\" class=\"form-control\" name=\"id\" placeholder=\"id\" value=\""+id3+"\" required />"
              +"</div>"
              +"<div>"
                +"<label style=\"float:left;\">课程名称：</label><input type=\"text\" class=\"form-control\" name=\"coursename\" placeholder=\"课程名称\" value=\""+coursename+"\" required />"
              +"</div>"
              +"<div>"
                +"<label style=\"float:left;\">学期：</label><input type=\"text\" class=\"form-control\" name=\"term\" placeholder=\"学期\" value=\""+term+"\" required />"
              +"</div>";
	break;
	case 4:
	int id4 = Integer.parseInt(request.getParameter("id"));
	int cid4 = Integer.parseInt(request.getParameter("cid"));
	int sid4 = Integer.parseInt(request.getParameter("sid"));
	int score = Integer.parseInt(request.getParameter("score"));
	input = "<div>"
	          +"<input type=\"hidden\" class=\"form-control\" name=\"table\" placeholder=\"table\" value=\"4\"  />"
              +"</div>"
              +"<div>"
                +"<input type=\"hidden\" class=\"form-control\" name=\"id\" placeholder=\"id\" value=\""+id4+"\" required />"
              +"</div>"
              +"<div>"
                +"<label style=\"float:left;\">课程号：</label><input type=\"text\" class=\"form-control\" name=\"cid\" placeholder=\"课程号\" value=\""+cid4+"\" required />"
              +"</div>"
              +"<div>"
                +"<label style=\"float:left;\">学号：</label><input type=\"text\" class=\"form-control\" name=\"sid\" placeholder=\"学号\" value=\""+sid4+"\" required />"
              +"</div>"
               +"<div>"
                +"<label style=\"float:left;\">分数：</label><input type=\"text\" class=\"form-control\" name=\"score\" placeholder=\"分数\" value=\""+score+"\" required />"
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
            <form action="update.jsp" method="post">
              <h1>Edit</h1>
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