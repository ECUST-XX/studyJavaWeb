package com.xx;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class classes {

	private String classname;
	
	public void set(String classname){
		this.classname = classname;
	}
	
	public int classupdate(int id){
		int index=0;
		
		 
		new mysql();
		mysql.connect();
		String ms = "UPDATE classes set classname = '"+this.classname+"' WHERE id = "+id;
		int rs = mysql.update(ms);
		
		System.out.println("+++++++++++结果----------："+rs);
		index = rs;
		mysql.free();
		
		return index;
		
	}
	
	public int classcreate(){
		int index = 0;
		
		 
		mysql.connect();
		String ms = "INSERT into classes(classname) values('"+this.classname+"')";
		int rs = mysql.update(ms);
		
		System.out.println("+++++++++++结果----------："+rs);
		index = rs;
		mysql.free();
		
		return index;
		
	}
	
	
	public int classdelete(int id){
		int index=0;
		
		 
		new mysql();
		mysql.connect();
		String ms = "DELETE from classes WHERE id = "+id;
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
		String ms = "SELECT id, classname FROM classes  ";
		ResultSet rs = mysql.find(ms);
		try {
			while(rs.next()){
			  // 通过字段检索
			  int id  = rs.getInt("id");
			  String classname = rs.getString("classname");
			  String select ="<a class=\"btn btn-warning btn-xs edit_item\" href=\"javascript:;\"><i class=\"fa fa-edit\"></i> 修改<form action=\"edit.jsp\" method=\"POST\" style=\"display:none\">"+
				"<input type=\"hidden\" name=\"id\" value=\""+id+"\">" +
				"<input type=\"hidden\" name=\"classname\" value=\""+classname+"\">"+
				"<input type=\"hidden\" name=\"table\" value=\"2\">"+
				"</form></a>   "+
				"<a class=\"btn btn-danger btn-xs destroy_item\" href=\"javascript:;\"><i class=\"fa fa-edit\"></i> 删除<form action=\"delete.jsp\" method=\"POST\" style=\"display:none\">"+
				"<input type=\"hidden\" name=\"id\" value=\""+id+"\">"+
				"<input type=\"hidden\" name=\"table\" value=\"2\">"+
				"</form></a>";
			  
			  JSONObject json=new JSONObject(); 
			  json.put("id", id);
			  json.put("classname", classname);
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
