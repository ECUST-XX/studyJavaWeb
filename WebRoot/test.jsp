<%@ page language="java" import="java.io.*,java.util.*,com.xx.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

	
	student stu = new student();
	SselectC ss = new SselectC();
	String rs = null;
	String th = null;
	String colums = null;
	
	int t1=0;
	stu.set("4fhgfhg6", 45, 78, "dad阿德撒旦", "qaz");
	t1 = stu.studentcreate();
	
	out.print(t1);


%>