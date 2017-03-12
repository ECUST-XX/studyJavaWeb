package com.xx;


import java.sql.*;

public class mysql {

	// JDBC �����������ݿ� URL
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    static final String DB_URL = "jdbc:mysql://192.168.10.10:3306/student?useUnicode=true&characterEncoding=UTF-8";
 
    // ���ݿ���û��������룬��Ҫ�����Լ�������
    static final String USER = "homestead";
    static final String PASS = "secret";
 
    private static Connection conn = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;
    

    public static void  free(){
        try {
        	
        	if (rs != null ) { //��ȷ��д��
        		rs.close();
            } 
        	if(stmt != null){
        		stmt.close();
        	}
        	
        	
			stmt.close();
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
    }
    
    public static void connect(){
    	 
         
         try {
        	 
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);
			
			stmt = conn.createStatement();
			
		} catch(SQLException se){
            // ���� JDBC ����
            se.printStackTrace();
        }catch(Exception e){
            // ���� Class.forName ����
            e.printStackTrace();
        }
      
       
    }
    
    public static ResultSet find(String sql){
    	
	    
	    try {
			rs = stmt.executeQuery(sql);
			
			System.out.println(rs.getMetaData());
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
        
         
        return rs;
    }
    
    
    public static int update(String sql){
    	
		int i = 0;
	    try {
			i = stmt.executeUpdate(sql);
			
			System.out.println(i);
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
        
         
        return i;
    }


    public static int create(String sql){
	
	int i = 0;
    try {
		i = stmt.executeUpdate(sql);
		
		System.out.println(i);
		
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    
    
     
    return i;
}

 public static int delete(String sql){
    	
	    int i = 0;
	    try {
	    	i = stmt.executeUpdate(sql);
			
	    	System.out.println(i);
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
        
         
        return i;
    }
}
