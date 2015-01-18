package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import vo.ProductsVO;

import com.db.DBConnect;
import com.db.DBRepository;
public class ProductsDAO {

	
	
	public ArrayList getDetails(String productname) throws Exception {
		
		 
		DBConnect dbc = new DBConnect();
		Connection con=null;
		Statement stat=null;
		ResultSet rs=null;
		int count=0;
		ArrayList productdetails=new ArrayList();
		try {
			 con = dbc.createDBConnection();
			 stat = con.createStatement();
				
				
				PreparedStatement pstmt = con.prepareStatement(DBRepository.DISPOSABLE_DETAILS);
				pstmt.setString(1, productname);
				rs = pstmt.executeQuery();
				int i=1;
				while(rs.next()){
					ProductsVO productsvo=new ProductsVO();
					productsvo.setProductid(rs.getString("Productid"));
					productsvo.setProduct_name(rs.getString("product_name"));
					productsvo.setProduct_category(rs.getString("product_category"));
					productsvo.setProduct_description(rs.getString("product_description"));
					productsvo.setProduct_features(rs.getString("product_features"));
					productsvo.setProduct_specification(rs.getString("product_specification"));
					productsvo.setProduct_standard(rs.getString("product_standard"));
					productsvo.setProduct_brand(rs.getString("product_brand"));
					productsvo.setProduct_availability(rs.getString("product_availability"));
					
					
					System.out.println(productsvo.getProduct_description());
					productdetails.add(productsvo);
					 
				}
			}
			catch(Exception e)
			{
				
				throw e;
			}
			finally {
				con.close();
				}
			 	
		return productdetails;
	}
	
}
