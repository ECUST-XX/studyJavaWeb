package com.xx;

import org.json.*;

import com.xx.mysql;
import java.sql.*;


public class course {

	private int term;
	private String coursename;

	
	public void set(String coursename,int term){
		this.term = term;
		this.coursename = coursename;
		
	}

	public String coursefindall() {
		
		JSONArray jsons = new JSONArray(); 
		new mysql();
		mysql.connect();
		String ms = "SELECT id, coursename, term FROM student";
		ResultSet rs = mysql.find(ms);
		try {
			while(rs.next()){
			  // 通过字段检索
			  int id  = rs.getInt("id");
			  String coursename  = rs.getString("coursename");
			  int term  = rs.getInt("term");
			 
			  JSONObject json=new JSONObject(); 
			  
			  json.put("id", id);
			  json.put("coursename", coursename);
			  json.put("term", term);
			  
			  jsons.put(json);
			  
			  System.out.print(json);
			  // 输出数据
			 
			  System.out.println(jsons);
     }
			System.out.println(jsons);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		mysql.free();
		
		
		return jsons.toString();
		
	}
	
	
	
	
	public int courseupdate(int id){
		int index=0;
		
		new JSONObject(); 
		new JSONArray(); 
		new mysql();
		mysql.connect();
		String ms = "UPDATE course set coursename = '"+this.coursename+"' WHERE id = "+id;
		int rs = mysql.update(ms);
		
		System.out.println("+++++++++++结果----------："+rs);
		index = rs;
		mysql.free();
		
		return index;
		
	}
	
	public int coursecreate(){
		int index = 0;
		
		
		new mysql();
		mysql.connect();
		String ms = "INSERT into course(coursename,term) values('"+this.coursename+"','"+this.term+"')";
		int rs = mysql.update(ms);
		
		System.out.println("+++++++++++结果----------："+rs);
		index = rs;
		mysql.free();
		
		return index;
		
	}
	
	
	public int coursedelete(int id){
		int index=0;
		
		 
		new mysql();
		mysql.connect();
		String ms = "DELETE from course WHERE id = "+id;
		int rs = mysql.update(ms);
		
		System.out.println("+++++++++++结果----------："+rs);
		index = rs;
		mysql.free();
		
		return index;
		
	}
	
	
	
	
	
	
	public String show(){
		JSONArray jsons = new JSONArray(); 
		new mysql();
		mysql.connect();
		String ms = "SELECT id, coursename, term FROM course ";
		ResultSet rs = mysql.find(ms);
		try {
			while(rs.next()){
			  // 通过字段检索
			  int id  = rs.getInt("id");
			  int term  = rs.getInt("term");
			  String coursename = rs.getString("coursename");
			  String select ="<a class=\"btn btn-warning btn-xs edit_item\" href=\"javascript:;\"><i class=\"fa fa-edit\"></i> 修改<form action=\"edit.jsp\" method=\"POST\" style=\"display:none\">"+
				"<input type=\"hidden\" name=\"id\" value=\""+id+"\">" +
				"<input type=\"hidden\" name=\"term\" value=\""+term+"\">"+
				"<input type=\"hidden\" name=\"coursename\" value=\""+coursename+"\">"+
				"<input type=\"hidden\" name=\"table\" value=\"3\">"+
				"</form></a>   "+
				"<a class=\"btn btn-danger btn-xs destroy_item\" href=\"javascript:;\"><i class=\"fa fa-edit\"></i> 删除<form action=\"delete.jsp\" method=\"POST\" style=\"display:none\">"+
				"<input type=\"hidden\" name=\"id\" value=\""+id+"\">"+
				"<input type=\"hidden\" name=\"table\" value=\"3\">"+
				"</form></a>";
			  
			  JSONObject json=new JSONObject(); 
			  json.put("id", id);
			  json.put("term", term);
			  json.put("coursename", coursename);
			  json.put("select",select);
			  jsons.put(json);
			  
			  System.out.print(json);
			  
			  System.out.println(jsons);
     }
			System.out.println(jsons);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		mysql.free();
		
		
		return jsons.toString();
		
		
	}
	
	
	
	
	
	
	
}
