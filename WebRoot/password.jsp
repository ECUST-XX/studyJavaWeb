<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>密码</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<link rel="stylesheet" href="bootstrap/dist/css/bootstrap.min.css" >
	<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" >
	<link rel="stylesheet" href="animate/animate.min.css" >
	
	 <link href="custom.min.css" rel="stylesheet">
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body class="login">
  
 <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form action="passwordreset.jsp" method="post">
              <h1>Password Reset</h1>
               <div>
                <input type="password" class="form-control" name="password0" placeholder="原密码" required="" />
              </div>
              <div>
                <input type="password" class="form-control" name="password" placeholder="密码" required="" />
              </div>
              <div>
                <input type="password" class="form-control" name="password2" placeholder="重复密码" required="" />
              </div>
              <div>
                <button class="btn btn-default submit" >reset</button>
                
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
