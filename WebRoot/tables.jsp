<%@ page language="java" import="java.io.*,java.util.*,com.xx.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";




student stu = new student();
String rs1 = stu.show();
String colums1 = "{data:'id'},{data:'name'},{data:'sid'},{data:'cid'},{data:'college'},{data:'select'}";

classes cla = new classes();
String rs2 = cla.show();
String colums2 = "{data:'id'},{data:'classname'},{data:'select'}";

course cou = new course();
String rs3 = cou.show();
String colums3 = "{data:'id'},{data:'coursename'},{data:'term'},{data:'select'}";


SselectC ss = new SselectC();
String rs4 = ss.show();
String colums4 = "{data:'id'},{data:'sid'},{data:'cid'},{data:'score'},{data:'select'}";

%>


<html>
  <head>
  
  
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="initial-scale=1.0, maximum-scale=2.0">
	<title>DataTables</title>
	<link rel="stylesheet" type="text/css" href="bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" >
	<link rel="stylesheet" type="text/css" href="media/css/jquery.dataTables.css">
	<link rel="stylesheet" type="text/css" href="button/menu.min.css">
	
	
	
	
  </head>
  
  <body>
	 
    <div class="container" >
	<table id="table1" class="display">
    <thead>
        <tr>
        	<th>id</th>
            <th>姓名</th>
            <th>班级号</th>
            <th>学号</th>
            <th>学院</th>
            <th>选项</th>
        </tr>
    </thead>
    <tbody>
       
    </tbody>
	</table>
	
		<table id="table2" class="display">
    <thead>
        <tr>
        	<th>id</th>
            <th>班级名称</th>
            <th>选项</th>
        </tr>
    </thead>
    <tbody>
       
    </tbody>
	</table>
	
	
	
	
		<table id="table3" class="display">
    <thead>
        <tr>
        	<th>id</th>
            <th>课程名</th>
            <th>学期</th>
            <th>选项</th>
        </tr>
    </thead>
    <tbody>
       
    </tbody>
	</table>
	
	
		<table id="table4" class="display">
    <thead>
        <tr>
        	<th>id</th>
            <th>学号</th>
            <th>课程号</th>
            <th>得分</th>
            <th>选项</th>
        </tr>
    </thead>
    <tbody>
       
    </tbody>
	</table>
</div>



<a href="javascript:;" class="toggle btn btn-success btn-lg" style="float: right;cursor: default;display: block; position: fixed; right: 0; top: 50%; z-index: 11;" id="menu-button">
  <i class="glyphicon glyphicon-plus">ADD</i>
</a>
<ul class="menu" data-menu data-menu-toggle="#menu-button">
  <li>
    <a  onclick="location.href='add.jsp?table=1'">添加学生信息</a>
  </li>
  <li>
    <a onclick="location.href='add.jsp?table=2'">添加班级信息</a>
  </li>
  <li>
    <a onclick="location.href='add.jsp?table=3'">添加课程信息</a>
  </li>
  <li>
    <a onclick="location.href='add.jsp?table=4'">添加选课与分数信息</a>
  </li>
  
</ul>                



<script type="text/javascript" language="javascript" src="jquery/dist/jquery.min.js">
</script>
<script type="text/javascript" language="javascript" src="media/js/jquery.dataTables.js">
</script>
<script type="text/javascript" language="javascript" src="media/js/dataTables.bootstrap.js">
</script>
<script type="text/javascript" language="javascript" src="layer/layer.js">
</script>
<script type="text/javascript" language="javascript" src="button/menu.min.js">
</script>
<script type="text/javascript" language="javascript">

 
  $(document).ready( function () {
  
  
      $('#table1').DataTable({

          data: <%=rs1%>,
          "columns": [
				<%=colums1%>
			],
			
      });




  $('#table2').DataTable({

          data: <%=rs2%>,
          "columns": [
				<%=colums2%>
			],
			
      });
      
      
        $('#table3').DataTable({

          data: <%=rs3%>,
          "columns": [
				<%=colums3%>
			],
      });
      
      
        $('#table4').DataTable({

          data: <%=rs4%>,
          "columns": [
				<%=colums4%>
			],
      });
      
      
  

  
  
  }
  )
  

    	  $(document).on('click','.edit_item',function() {
          var _item = $(this);
          layer.confirm('确定修改此数据？', {
          	  offset: '30%',
              btn: ['确定', '取消'],
              icon: 3,
          },function(index){
              _item.children('form').submit();
              layer.close(index);
          });
      })




      $(document).on('click','.destroy_item',function() {
          var _item = $(this);
          layer.confirm('确定删除此数据？', {
          	  offset: '30%',
              btn: ['确定', '取消'],
              icon: 5,
          },function(index){
              _item.children('form').submit();
              layer.close(index);
          });
      })
    
    $('[data-menu]').menu();  
  
 
      
 		
</script>


  </body>
</html>
