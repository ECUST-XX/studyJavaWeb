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
	
	String name = request.getParameter("name");
	byte[] bs1 = name.getBytes("ISO-8859-1");
	name = new String(bs1,"utf-8");
	int cid = Integer.parseInt(request.getParameter("cid"));
	int sid = Integer.parseInt(request.getParameter("sid"));
	String college = request.getParameter("college");
	byte[] bs12 = college.getBytes("ISO-8859-1");
	college = new String(bs12,"utf-8");
	String password = request.getParameter("password");
	
	
	stu.set(name, sid, cid, college,password);
	rs = stu.studentcreate();
	
	break;
	case 2:
	
	String classname = request.getParameter("classname");
	byte[] bs2 = classname.getBytes("ISO-8859-1");
	classname = new String(bs2,"utf-8");
	
	cla.set(classname);
	rs = cla.classcreate();
	
	break;
	case 3:
	
	String coursename = request.getParameter("coursename");
	byte[] bs3 = coursename.getBytes("ISO-8859-1");
	coursename = new String(bs3,"utf-8");
	int term = Integer.parseInt(request.getParameter("term"));
	
	cou.set(coursename,term);
	rs = cou.coursecreate();
	
	break;
	case 4:
	
	int cid4 = Integer.parseInt(request.getParameter("cid"));
	int sid4 = Integer.parseInt(request.getParameter("sid"));
	int score = Integer.parseInt(request.getParameter("score"));
	
	ss.set(sid4, cid4, score);
	rs = ss.scorecreate();
	
	break;
	}

if(rs != 0){
	
		out.println("添加成功，5秒后跳转");
		
}else{

	out.println("添加失败，5秒后跳转");

}





%>


<meta http-equiv="refresh" content='5; url=tables.jsp'>
