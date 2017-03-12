<%@ page language="java" import="java.io.*,java.util.*,com.xx.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


	int table = Integer.parseInt(request.getParameter("table"));
	
	
	student stu = new student();
	course cou = new course();
	classes cla = new classes();
	SselectC ss = new SselectC();
	int rs = 0;
	
	
	switch(table){
	case 1:
	int id1 = Integer.parseInt(request.getParameter("id"));
	rs = stu.studentdelete(id1);
	
	
	break;
	case 2:
	int id2 = Integer.parseInt(request.getParameter("id"));
	rs = stu.studentdelete(id2);
	
	break;
	case 3:
	int id3 = Integer.parseInt(request.getParameter("id"));
	rs = stu.studentdelete(id3);
	
	break;
	case 4:
	int id4 = Integer.parseInt(request.getParameter("id"));
	rs = stu.studentdelete(id4);
	
	break;
	}

if(rs != 0){
	
		out.println("删除成功，5秒后跳转");
		
}else{

	out.println("删除失败，5秒后跳转");

}

%>


<meta http-equiv="refresh" content='5; url=tables.jsp'>
