package com.niuys.gdzc.web.struts.action;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteUserAction extends BaseAction {



	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		String eno =request.getParameter("userName");
		if(userManaManagerImpl.deleteUser(eno)){
			return mapping.findForward("success");
		}
		else{
			return mapping.findForward("fail");
		}

	}



}
