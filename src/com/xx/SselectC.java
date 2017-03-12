package com.xx;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SselectC {

	private int sid;
	private int cid;
	private int score;
	
	public void set(int sid,int cid,int score){
		this.sid = sid;
		this.cid = cid;
		this.score = score;
	}
	
	public int scoreupdate(){
		return scoreupdate(this.sid,this.cid);
	}
	
	public int scoreupdate(int sid,int cid){
		int index=0;
		
		
		new mysql();
		mysql.connect();
		String ms = "UPDATE StudentSelectCourse set score = '"+this.score+"' WHERE sid = "+sid+" AND cid = "+cid;
		int rs = mysql.update(ms);
		
		System.out.println("+++++++++++结果----------："+rs);
		index = rs;
		mysql.free();
		
		return index;
		
	}
	
	public int scorecreate(){
		int index = 0;
		
		 
		new mysql();
		mysql.connect();
		String ms = "INSERT into StudentSelectCourse(score,sid,cid) values('"+this.score+"','"+this.sid+"','"+this.cid+"')";
		int rs = mysql.update(ms);
		
		System.out.println("+++++++++++结果----------："+rs);
		index = rs;
		mysql.free();
		
		return index;
		
	}
	
	
	public int scoredelete(int sid,int cid){
		int index=0;
		
		 
		new mysql();
		mysql.connect();
		String ms = "DELETE from classes WHERE sid = "+sid+" AND cid = "+cid;
		int rs = mysql.update(ms);
		
		System.out.println("+++++++++++结果----------："+rs);
		index = rs;
		mysql.free();
		
		return index;
		
	}
	
	public String termfindscore(int i) {
		
		JSONArray jsons = new JSONArray(); 
		new mysql();
		mysql.connect();
		String ms = "SELECT id, cid, sid, score FROM StudentSelectCourse WHERE cid in (SELECT id FROM course WHERE term = "+i+") ";
		ResultSet rs = mysql.find(ms);
		try {
			while(rs.next()){
			  // 通过字段检索
			  int id  = rs.getInt("id");
			  int cid  = rs.getInt("cid");
			  int sid  = rs.getInt("sid");
			  int score  = rs.getInt("score");
			  
			  
			  JSONObject json=new JSONObject(); 
			  json.put("id", id);
			  json.put("cid", cid);
			  json.put("sid", sid);
			  json.put("score", score);
			  jsons.put(json);
			  
			  System.out.print("----------------"+json);
		
			  System.out.println("++++++++++++++++"+jsons);
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
	
	
	public String coursefindscore(int incid) {
		
		JSONArray jsons = new JSONArray(); 
		new mysql();
		mysql.connect();
		String ms = "SELECT id, cid, sid, score FROM StudentSelectCourse WHERE cid = "+incid;
		ResultSet rs = mysql.find(ms);
		try {
			while(rs.next()){
			  // 通过字段检索
			  int id  = rs.getInt("id");
			  int cid  = rs.getInt("cid");
			  int sid  = rs.getInt("sid");
			  int score  = rs.getInt("score");
			  
			  
			  JSONObject json=new JSONObject(); 
			  json.put("id", id);
			  json.put("cid", cid);
			  json.put("sid", sid);
			  json.put("score", score);
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
	
	
	public int SselectCupdate(int id){
		int index=0;
		
		
		new mysql();
		mysql.connect();
		String ms = "UPDATE StudentSelectCourse set sid = '"+this.sid+"', cid = '"+this.cid+"', score = '"+this.score+"' WHERE id = "+id;
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
		String ms = "SELECT id, cid, sid, score FROM StudentSelectCourse ";
		ResultSet rs = mysql.find(ms);
		try {
			while(rs.next()){
			  // 通过字段检索
			  int id  = rs.getInt("id");
			  int cid  = rs.getInt("cid");
			  int sid  = rs.getInt("sid");
			  int score  = rs.getInt("score");
			
			  String select ="<a class=\"btn btn-warning btn-xs edit_item\" href=\"javascript:;\"><i class=\"fa fa-edit\"></i> 修改<form action=\"edit.jsp\" method=\"POST\" style=\"display:none\">"+
				"<input type=\"hidden\" name=\"id\" value=\""+id+"\">" +
				"<input type=\"hidden\" name=\"cid\" value=\""+cid+"\">"+
				"<input type=\"hidden\" name=\"sid\" value=\""+sid+"\">"+
				"<input type=\"hidden\" name=\"score\" value=\""+score+"\">"+
				"<input type=\"hidden\" name=\"table\" value=\"4\">"+
				"</form></a>   "+
				"<a class=\"btn btn-danger btn-xs destroy_item\" href=\"javascript:;\"><i class=\"fa fa-edit\"></i> 删除<form action=\"delete.jsp\" method=\"POST\" style=\"display:none\">"+
				"<input type=\"hidden\" name=\"id\" value=\""+id+"\">"+
				"<input type=\"hidden\" name=\"table\" value=\"4\">"+
				"</form></a>";
			  
			  JSONObject json=new JSONObject(); 
			  json.put("id", id);
			  json.put("cid", cid);
			  json.put("sid", sid);
			  json.put("score", score);
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
