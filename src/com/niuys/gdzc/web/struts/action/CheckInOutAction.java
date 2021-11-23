package com.niuys.gdzc.web.struts.action;

import com.niuys.gdzc.model.Comployee;
import com.niuys.gdzc.model.ZcInfo;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CheckInOutAction extends BaseAction {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		HttpSession session=(HttpSession)request.getSession();
		String zcId=request.getParameter("zc_id");
		String comployeeNo=request.getParameter("e_id");

		Comployee comployee=inOutAssetManagerImpl.getOneEmployee(comployeeNo);
		session.setAttribute("comployee", comployee);
		ZcInfo zcinfo=inOutAssetManagerImpl.getOneZc(zcId);
		session.setAttribute("zcinfo", zcinfo);

		return mapping.findForward("success");
	}
}

