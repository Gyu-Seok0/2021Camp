package com.board.common;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCUtil {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con= DriverManager.getConnection("jdbc:mysql://db4free.net:3306/kbin6960","kbin6960","비밀번호");  
	    }catch(Exception e){
	    	System.out.println(e);
	    }  
	    return con;  
	}
}