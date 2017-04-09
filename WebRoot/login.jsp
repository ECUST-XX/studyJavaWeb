<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,com.xx.*" %>
<%

	int sid = Integer.parseInt(request.getParameter("sid"));
	
	String pw = request.getParameter("password");
	
	
		student stu = new student();
		int index = stu.login(sid,pw);
		
		if(index==0){
			
			out.print("登陆失败，5秒后跳转");
			//response.sendRedirect("index.jsp");
			response.setHeader("Refresh","5;url=index.jsp");
			return;
			 
		}else if(session.getAttribute("sid")==null){
			session.setAttribute("sid", index);
			
		}else if((Integer)session.getAttribute("sid")==sid){
			
			//out.print("登陆成功");
			}
	
	 
%>
