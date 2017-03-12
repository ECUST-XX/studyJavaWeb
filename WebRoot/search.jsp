<%@ page language="java" import="java.io.*,java.util.*,com.xx.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

	int sid = Integer.parseInt(request.getParameter("method"));
	int id = Integer.parseInt(request.getParameter("id"));
	student stu = new student();
	SselectC ss = new SselectC();
	String rs = null;
	String th = null;
	String colums = null;
	
	switch(sid){
	case 1:
	rs = stu.classfindstudent(id);
	th = "<th >姓名</th><th >学号</th><th >班级号</th><th >学院号</th>";
	colums = "{data:'name'},{data:'sid'},{data:'cid'},{data:'college'}";
	break;
	case 2:
	rs = stu.sidfindstudent(id);
	th = "<th >姓名</th><th >学号</th><th >班级号</th><th >学院号</th>";
	colums = "{data:'name'},{data:'sid'},{data:'cid'},{data:'college'}";
	break;
	case 3:
	rs = ss.termfindscore(id);
	th = "<th >课程号</th><th >学号</th><th >分数</th>";
	colums = "{data:'sid'},{data:'cid'},{data:'score'}";
	break;
	case 4:
	rs = ss.coursefindscore(id);
	th = "<th >课程号</th><th >学号</th><th >分数</th>";
	colums = "{data:'sid'},{data:'cid'},{data:'score'}";
	break;
	}
	



%>

<html>
  <head>
    <base href="<%=basePath%>">
     
  
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="initial-scale=1.0, maximum-scale=2.0">
	<title>DataTables</title>
	<link rel="stylesheet" type="text/css" href="bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="media/css/jquery.dataTables.css">
	
	
	
  </head>
  
  <body>
    <div class="container" style="margin:10% 10%;">
	<table id="table" class="display">
    <thead>
        <tr>
            <%=th %>
        </tr>
    </thead>
    <tbody>
       
    </tbody>
	</table>
</div>



<script type="text/javascript" language="javascript" src="jquery/dist/jquery.min.js">
</script>
<script type="text/javascript" language="javascript" src="media/js/jquery.dataTables.js">
</script>
<script type="text/javascript" language="javascript" src="media/js/dataTables.bootstrap.js">
</script>
<script type="text/javascript" language="javascript">
$(document).ready( function () {
    $('#table').DataTable({
    
    data: <%=rs%>,
    columns:[<%=colums%>],
    
    
    
    });
} );
</script>


  </body>
</html>
