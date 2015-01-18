/**
 * 
 */
package com.db;

import java.sql.*;
import java.io.*;
 

public class DBConnect {
	Connection con = null;

	 
	
	public Connection createDBConnection() {
		
		 
		String dbUrl="jdbc:mysql://localhost/labineer";
		 
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection (dbUrl,"root","satyam");
			// for MySQL Class.forName("net.sourceforge.jtds.jdbc.Driver");
		    
		    
		} catch (Exception e) {

			System.err.println(e);
			 
		} finally {
			//System.err.println("in Finally method.....");
			 
		}

		return con;

	}

	public void DBConClose() {
		if (null != con) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}




