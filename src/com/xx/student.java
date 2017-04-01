package com.xx;

import org.json.*;

import com.xx.mysql;
import java.sql.*;

public class student {

	private String studentname;
	private int classid;
	private int sid;
	private String college;
	private String password;
	public void set(String studentname,int sid,int classid,String college){
		this.sid = sid;
		this.classid = classid;
		this.college = college;
		this.studentname = studentname;
	}
	
	public void set(String studentname,int sid,int classid,String college,String password){
		this.sid = sid;
		this.classid = classid;
		this.college = college;
		this.studentname = studentname;
		this.password = password;
	}
	
	public String classfindstudent(int i) {
		
		JSONArray jsons = new JSONArray(); 
		new mysql();
		mysql.connect();
		String ms = "SELECT id, name, cid, sid, college FROM student WHERE cid = "+i;
		ResultSet rs = mysql.find(ms);
		try {
			while(rs.next()){
			  // 通过字段检索
			  int id  = rs.getInt("id");
			  int cid  = rs.getInt("cid");
			  int sid  = rs.getInt("sid");
			  String college  = rs.getString("college");
			  String name = rs.getString("name");
			  
			  JSONObject json=new JSONObject(); 
			  json.put("id", id);
			  json.put("cid", cid);
			  json.put("sid", sid);
			  json.put("college", college);
			  json.put("name", name);
			  jsons.put(json);
			  
			  System.out.print(json);
			  // 输出数据
			  System.out.print("ID: " + id);
			  System.out.print(", college: " + college);
			  System.out.print(", cid: " + cid);
			  System.out.print(", sid: " + sid);
			  System.out.print(", 站点名称: " + name);
			  System.out.print("\n");
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
	
	
	public String sidfindstudent(int i) {
		
		JSONArray jsons = new JSONArray(); 
		
		mysql.connect();
		String ms = "SELECT id, name, cid, sid, college FROM student WHERE sid = "+i;
		ResultSet rs = mysql.find(ms);
		try {
			while(rs.next()){
			  // 通过字段检索
			  int id  = rs.getInt("id");
			  int cid  = rs.getInt("cid");
			  int sid  = rs.getInt("sid");
			  String college  = rs.getString("college");
			  String name = rs.getString("name");
			  
			  JSONObject json=new JSONObject(); 
			  json.put("id", id);
			  json.put("cid", cid);
			  json.put("sid", sid);
			  json.put("college", college);
			  json.put("name", name);
			  jsons.put(json);
			  
			  System.out.print(json);
			  // 输出数据
			  System.out.print("ID: " + id);
			  System.out.print(", college: " + college);
			  System.out.print(", cid: " + cid);
			  System.out.print(", sid: " + sid);
			  System.out.print(", 站点名称: " + name);
			  System.out.print("\n");
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
	
	
	public int studentupdate(int id){
		int index=0;
		
		new JSONObject(); 
		new JSONArray(); 
		new mysql();
		mysql.connect();
		String ms = "UPDATE student set name = '"+this.studentname+"',sid = '"+this.sid+"',cid = '"+this.classid+"',college = '"+this.college+"' WHERE id = "+id;
		int rs = mysql.update(ms);
		index = rs;
		System.out.println("+++++++++++结果----------："+rs);
		
		mysql.free();
		
		return index;
		
	}
	
	
	public int login(int insid,String pw){
		int index=0;
		String pwd = null;
		int stas = 0;
		
		new JSONObject(); 
		new JSONArray(); 
		new mysql();
		mysql.connect();
		
		String ms0 = "SELECT id, name, cid, sid, college ,password ,statues FROM student WHERE sid = "+insid;
		ResultSet rs0 = mysql.find(ms0);
		
		  try {
			  
			  while(rs0.next()){
				rs0.getInt("id");
				rs0.getInt("cid");
				rs0.getInt("sid");
				rs0.getString("college");
				rs0.getString("name");
				pwd = rs0.getString("password");
				stas  = rs0.getInt("statues");
				
				System.out.println(pwd+"++++----=====---++++"+stas);
			  }
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  System.out.println(pwd+"------------"+pw);
		  System.out.println(stas+"------------"+stas);
		  if((pwd.equals(pw))&&(stas==0)){
			  	String ms = "UPDATE student set statues = '"+insid+"' WHERE sid = "+insid;
				int rs = mysql.update(ms);
				index = insid;
				System.out.println("+++++++++++结果----------："+rs);
		  }
		 
		
		
		mysql.free();
		
		return index;
		
	}
	
	
	
	public int logout(int insid){
		int index=0;
		
		new JSONObject(); 
		new JSONArray(); 
		new mysql();
		mysql.connect();
		String ms = "UPDATE student set statues = '0' WHERE sid = "+insid;
		int rs = mysql.update(ms);
		index = rs;
		System.out.println("+++++++++++结果----------："+rs);
		
		mysql.free();
		
		return index;
		
	}
	
	
	public int passwordrest(int insid,String pw0,String pw){
		int index = 0;
		String pwd = null;
		int stas = 0;
		
		new JSONObject(); 
		new JSONArray(); 
		new mysql();
		mysql.connect();
		
		String ms0 = "SELECT id, name, cid, sid, college ,password ,statues FROM student WHERE sid = "+insid;
		ResultSet rs0 = mysql.find(ms0);
		
		  try {
			  
			  while(rs0.next()){
				rs0.getInt("id");
				rs0.getInt("cid");
				rs0.getInt("sid");
				rs0.getString("college");
				rs0.getString("name");
				pwd = rs0.getString("password");
				stas  = rs0.getInt("statues");
			  }
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		  System.out.println(pwd+"-----"+pw0+"-------"+pw);
		  System.out.println(stas+"------------"+stas);
		  if(pwd.equals(pw0)){
			  	String ms = "UPDATE student set password = '"+pw+"' WHERE sid = "+insid;
				int rs = mysql.update(ms);
				index = rs;
				System.out.println("+++++++++++结果----------："+rs);
		  }
		  
		
		
		mysql.free();
		
		return index;
	}
	
	
	
	public String show(){
		JSONArray jsons = new JSONArray(); 
		new mysql();
		mysql.connect();
		String ms = "SELECT id, name, cid, sid, college FROM student ";
		ResultSet rs = mysql.find(ms);
		try {
			while(rs.next()){
			  // 通过字段检索
			  int id  = rs.getInt("id");
			  int cid  = rs.getInt("cid");
			  int sid  = rs.getInt("sid");
			  String college  = rs.getString("college");
			  String name = rs.getString("name");
			  String select ="<a class=\"btn btn-warning btn-xs edit_item\" href=\"javascript:;\"><i class=\"fa fa-edit\"></i> 修改<form action=\"edit.jsp\" method=\"POST\" style=\"display:none\">"+
				"<input type=\"hidden\" name=\"id\" value=\""+id+"\">" +
				"<input type=\"hidden\" name=\"name\" value=\""+name+"\">"+
				"<input type=\"hidden\" name=\"cid\" value=\""+cid+"\">"+
				"<input type=\"hidden\" name=\"sid\" value=\""+sid+"\">"+
				"<input type=\"hidden\" name=\"college\" value=\""+college+"\">"+
				"<input type=\"hidden\" name=\"table\" value=\"1\">"+
				"</form></a>   "+
				"<a class=\"btn btn-danger btn-xs destroy_item\" href=\"javascript:;\"><i class=\"fa fa-edit\"></i> 删除<form action=\"delete.jsp\" method=\"POST\" style=\"display:none\">"+
				"<input type=\"hidden\" name=\"id\" value=\""+id+"\">"+
				"<input type=\"hidden\" name=\"table\" value=\"1\">"+
				"</form></a>";
			  
			  JSONObject json=new JSONObject(); 
			  json.put("id", id);
			  json.put("cid", cid);
			  json.put("sid", sid);
			  json.put("college", college);
			  json.put("name", name);
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
	
	
	
	
	public int studentdelete(int id){
		int rs = 0;
		new mysql();
		mysql.connect();
		String ms = "DELETE FROM student WHERE id = "+id;
		System.out.println("======00000000======"+ms);
		rs = mysql.delete(ms);
		System.out.println("+++++++++++结果----------："+rs);
		
		
		mysql.free();
		
		
		return rs;
		
		
	}
	
	
	
	public int studentcreate(){
		int rs = 0;
		new mysql();
		mysql.connect();
		String ms = "INSERT INTO student (name, cid, sid, college, password, statues) VALUES ('"+this.studentname+"','"+this.classid+"','"+this.sid+"','"+this.college+"','"+this.password+"','0')" ;
		System.out.println("======00000000======"+ms);
		rs = mysql.create(ms);
		System.out.println("+++++++++++结果----------："+rs);
		
		
		mysql.free();
		
		
		return rs;
		
		
	}
}
