package com.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dao.ProductsDAO;
import com.form.ProductsForm;

public class DisplayDetailsAction extends BaseAction{

	public ActionForward getDetails(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
			
			ProductsForm productsform=(ProductsForm)form;
			ProductsDAO productsdao=new ProductsDAO();
			ArrayList productdetails=new ArrayList();
			String productname=(String) request.getParameter("productname");
			try{
				productdetails=productsdao.getDetails(productname);
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
				
			if(!productdetails.isEmpty()){
				request.setAttribute("productdetails", productdetails);
			}
			
			return mapping.findForward("success");
		
	}
}
