package com.niuys.gdzc.web.struts.action;

import com.niuys.gdzc.model.ZcInfo;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class PrintStoreInAction extends BaseAction {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		List<ZcInfo> list = assetManagerImpl.showAllAssets();



		request.setAttribute("list", list);
		return mapping.findForward("success");
	}

}
