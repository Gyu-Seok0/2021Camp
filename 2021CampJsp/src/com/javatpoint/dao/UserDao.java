package com.javatpoint.dao;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  
import com.javatpoint.bean.User;  

public class UserDao {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://db4free.net:3306/kbin6960","kbin6960","");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}
	
	public static int save(User u){  
	    int status=0;
	    
	    
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into BOARD(title,writer,content) values(?,?,?)");  
	        ps.setString(1,u.getTitle());  
	        ps.setString(2,u.getWriter());  
	        ps.setString(3,u.getContent()); 
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	    
	}  
	
	public static int update(User u){  
	    int status=0;  
	    try{
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update BOARD set title=?,writer=?,content=? where seq=?");  
	        ps.setString(1,u.getTitle());  
	        ps.setString(2,u.getWriter());  
	        ps.setString(3,u.getContent()); 
	        ps.setInt(4,u.getSeq());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	} 
	
	public static int delete(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from BOARD where seq=?");  
	        ps.setInt(1,u.getSeq());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}
	
	

	
	
	
	public static List<User> getAllRecords(){  
	    List<User> list=new ArrayList<User>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from BOARD");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            User u=new User();  
	            u.setSeq(rs.getInt("seq"));  
	            u.setTitle(rs.getString("title"));  
	            u.setWriter(rs.getString("writer"));  
	            u.setContent(rs.getString("content")); 
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}
	
	public static User getRecordById(int seq){  
	    User u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from BOARD where seq=?");  
	        ps.setInt(1,seq);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User();  
	            u.setSeq(rs.getInt("seq"));  
	            u.setTitle(rs.getString("title"));  
	            u.setWriter(rs.getString("writer"));  
	            u.setContent(rs.getString("content"));
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}
}