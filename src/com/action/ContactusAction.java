package com.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dao.ContactusDAO;
import com.form.ContactusForm;

public class ContactusAction extends BaseAction{
	public ActionForward contactus(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
			
		ContactusForm contactusform=(ContactusForm)form;
		ContactusDAO contactusdao=new ContactusDAO();
		System.out.println("name: "+contactusform.getFirstName());
		try{
			contactusdao.contactus(contactusform);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return mapping.findForward("success");
	}

}
