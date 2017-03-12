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
	String name = request.getParameter("name");
	byte[] bs1 = name.getBytes("ISO-8859-1");
	name = new String(bs1,"utf-8");
	int cid = Integer.parseInt(request.getParameter("cid"));
	int sid = Integer.parseInt(request.getParameter("sid"));
	String college = request.getParameter("college");
	byte[] bs12 = college.getBytes("ISO-8859-1");
	college = new String(bs12,"utf-8");
	
	stu.set(name, sid, cid, college);
	rs = stu.studentupdate(id1);
	
	break;
	case 2:
	int id2 = Integer.parseInt(request.getParameter("id"));
	String classname = request.getParameter("classname");
	byte[] bs2 = classname.getBytes("ISO-8859-1");
	classname = new String(bs2,"utf-8");
	
	cla.set(classname);
	rs = cla.classupdate(id2);
	
	break;
	case 3:
	int id3 = Integer.parseInt(request.getParameter("id"));
	String coursename = request.getParameter("coursename");
	byte[] bs3 = coursename.getBytes("ISO-8859-1");
	coursename = new String(bs3,"utf-8");
	int term = Integer.parseInt(request.getParameter("term"));
	
	cou.set(coursename,term);
	rs = cou.courseupdate(id3);
	
	break;
	case 4:
	int id4 = Integer.parseInt(request.getParameter("id"));
	int cid4 = Integer.parseInt(request.getParameter("cid"));
	int sid4 = Integer.parseInt(request.getParameter("sid"));
	int score = Integer.parseInt(request.getParameter("score"));
	
	ss.set(sid4, cid4, score);
	rs = ss.SselectCupdate(id4);
	
	break;
	}

if(rs != 0){
	
		out.println("修改成功，5秒后跳转");
		
}else{

	out.println("修改失败，5秒后跳转");

}





%>


<meta http-equiv="refresh" content='5; url=tables.jsp'>
