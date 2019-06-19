package org.zerock.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.Test;

public class DBTests {

	@Test
	public void testConnection() throws Exception {
		
		
		 Connection conn = null;

	        try{
	         
	            Class.forName("com.mysql.cj.jdbc.Driver");

	       
	            String url = "jdbc:mysql://192.168.41.10:3306/book_ex?useSSL=false&serverTimezone=Asia/Seoul";

	            conn = DriverManager.getConnection(url, "zerock", "zerock");
	            System.out.println("���� ����");

	        }
	        catch(ClassNotFoundException e){
	            System.out.println("����̹� �ε� ����");
	        }
	        catch(SQLException e){
	            System.out.println("����: " + e);
	        }
	        finally{
	            try{
	                if( conn != null && !conn.isClosed()){
	                    conn.close();
	                }
	            }
	            catch( SQLException e){
	                e.printStackTrace();
	            }
	        }
		
	}
	
	
}
