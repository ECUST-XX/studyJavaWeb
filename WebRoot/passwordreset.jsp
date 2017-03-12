<%@ page language="java" import="java.io.*,java.util.*,com.xx.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


String pw0 = request.getParameter("password0");
String pw = request.getParameter("password");
String pw2 = request.getParameter("password2");


student stu = new student();

if(session.getAttribute("sid")!=null&&pw.equals(pw2)){
	int sid = (Integer)session.getAttribute("sid");
	out.println(sid+"------------");
	out.println(session.getAttribute("sid"));
	
	if(stu.passwordrest(sid,pw0,pw)==1){
		out.println("重置成功，5秒后跳转");
		session.invalidate();
		
	
	}

}else{

	out.println("重置失败，5秒后跳转");

	
}





%>

<meta http-equiv="refresh" content='5; url=index.jsp'>