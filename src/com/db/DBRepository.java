/**
 * 
 */
package com.db;
 
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

 

public class DBRepository {
	
public final static String SELECT_QUERY = "select * from products";
public final static String COUNT_QUERY="select count(*) as count from products";
public final static String SELECT_PRODUCTS="select product_name from products where product_category=?";
public final static String DISPOSABLE_DETAILS="select Productid,product_name,product_category,product_description,product_specification,product_standard,product_features,product_brand,product_availability from products where product_name=?";
public final static String CONTACTUS="insert into contactus_data values(0,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
} 