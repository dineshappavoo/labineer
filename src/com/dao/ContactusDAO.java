package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import vo.ProductsVO;

import com.db.DBConnect;
import com.db.DBRepository;
import com.form.ContactusForm;

public class ContactusDAO {

	public void contactus(ContactusForm contactusform) throws Exception {
		
		 
		DBConnect dbc = new DBConnect();
		Connection con=null;
		Statement stat=null;
		ResultSet rs=null;
		int count=0;
		ArrayList productdetails=new ArrayList();
		try {
			 con = dbc.createDBConnection();
			 stat = con.createStatement();
				
				
				PreparedStatement pstmt = con.prepareStatement(DBRepository.CONTACTUS);
				 
				pstmt.setString(1, contactusform.getFirstName());
				pstmt.setString(2, contactusform.getSecondName());
				pstmt.setString(3, contactusform.getLastName());
				pstmt.setString(4, contactusform.getAddressLine1());
				pstmt.setString(5, contactusform.getAddressLine2());
				pstmt.setString(6, contactusform.getAddressLine3());
				pstmt.setString(7, contactusform.getCity());
				pstmt.setString(8, contactusform.getState());
				pstmt.setString(9, contactusform.getCountry());
				pstmt.setString(10, contactusform.getEmailId());
				pstmt.setString(11, contactusform.getPhoneNo());
				pstmt.setString(12, contactusform.getMobileNo());
				pstmt.setString(13, contactusform.getCompanyName());
				pstmt.setString(14, contactusform.getPurposeofContact());
				pstmt.setString(15, contactusform.getComments());
				 
				pstmt.executeUpdate();
				
			}
			catch(Exception e)
			{
				
				throw e;
			}
			finally {
				con.close();
				}
			 	
		 
	}
}
