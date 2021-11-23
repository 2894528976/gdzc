package com.niuys.gdzc.web.struts.action;

import com.niuys.gdzc.web.struts.form.LoginForm;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginAction extends BaseAction {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String err = "";

		HttpSession session=(HttpSession)request.getSession();
		//获得图片上的验证码
		String randCode = (String) session.getAttribute("code");

		LoginForm lf=(LoginForm)form;
		String username=lf.getUsername();
		String password=lf.getPassword();
//			if (lf.getCheckcode().equals(randCode)) {
				if (assetManagerImpl.login(username, password)) {
					// 把登录成功的用户名，放在cookie中
					Cookie c = new Cookie("username",username);
					c.setMaxAge(60 * 60 * 24);
					response.addCookie(c);
					// 登录成功，跳到显示所有课程的页面
					String competence=userManaManagerImpl.competence(username);
					session.setAttribute("username", username);
//					session.setAttribute("competence", competence);
					session.setAttribute("competence", "管理员");
					System.out.println("username为:"+username);
					System.out.println("password为:"+password);
					return mapping.findForward("success");
				} else {
					err = "用户名或密码错误！";
				}
//			} else {
//				err = "验证码错误！";
//			}
			System.out.println(err+"====================");
			request.getSession().setAttribute("err", err);
			return mapping.findForward("fail");
	}
}
