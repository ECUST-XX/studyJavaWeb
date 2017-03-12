<%@ page language="java" import="java.io.*,java.util.*,com.xx.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";




student stu = new student();
if(session.getAttribute("sid")!=null){
	int sid = (Integer)session.getAttribute("sid");
	out.println(session.getAttribute("sid"));
	if(stu.logout(sid)!=0){
		out.println("退出成功，5秒后跳转");
		session.invalidate();
	}

}else{

	out.println("请先登陆，5秒后跳转");

}






%>

<meta http-equiv="refresh" content='5; url=index.jsp'>
