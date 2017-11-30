package com.neu.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.neu.dao.LoginDao;

@Controller
@SessionAttributes({ "TagList","recommendList","informationList" })
public class LoginController {
	@Autowired
	private LoginDao loginDao;

	
	// login
	@RequestMapping("b_login")
	public ModelAndView b_login(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		String username = arg0.getParameter("username");
		String password = arg0.getParameter("password");
		if (loginDao.b_validate(username, password)) {
			HttpSession session = arg0.getSession();
			session.setAttribute("busername", username);
			session.setAttribute("index", 0);
			return new ModelAndView("index");
		}
		arg0.setAttribute("b_error", "check your name or password");
		return new ModelAndView("login");
	}
	
	// 注销
		@RequestMapping("b_cancel")
		public ModelAndView b_cancel(HttpServletRequest arg0, HttpServletResponse arg1) {
			HttpSession session = arg0.getSession();
			session.setAttribute("busername", null);
			session.setAttribute("index", null);
			return new ModelAndView("login");
		}
}
