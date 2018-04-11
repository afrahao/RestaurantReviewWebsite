package com.rrs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rrs.pojo.SysUser;
import com.rrs.service.SysUserService;
import com.rrs.util.ServiceException;

@Controller
public class HomeController {
	@Autowired
	private SysUserService sysUserService;

	@RequestMapping("/index")
	public String index(HttpServletRequest request, HttpServletResponse response) {
		return "index";
	}

	@RequestMapping("/forgetPassword")  
	public String toForgetPassword(HttpServletRequest request, HttpServletResponse response){  
	    return "forget_password";  
	}  
	
	@RequestMapping("/search")  
	public String search(HttpServletRequest request, HttpServletResponse response){  
	    return "restaurant_search";  

	}

	@RequestMapping("/login")
	public String toLogin(HttpServletRequest request, HttpServletResponse response) {
		return "login";
	}


	@RequestMapping("/info")
	public String restaurantInfo(HttpServletRequest request, HttpServletResponse response) {
		return "restaurant_info";
	}

	@RequestMapping(value = "/testEmail")
    public void TestEmail(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String email = request.getParameter("email");
		SysUser user = sysUserService.TestUserByEmail(email);
		if(user!=null){
			PrintWriter out = response.getWriter();    //设定传参变量
			out.print("wrong");      //结果传到前端
		}
		else{
			PrintWriter out = response.getWriter();    //设定传参变量
			out.print("success");
		}
		
    }
	
	@RequestMapping(value = "/register", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView regist(HttpServletRequest request, HttpServletResponse response) throws ParseException {
		String action = request.getParameter("action");
		System.out.println("-----r----" + action);
		ModelAndView mav = new ModelAndView();

		if ("register".equals(action)) {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String password = request.getParameter("password");	
			sysUserService.processregister(name, email, password);
			mav.addObject("text", "注册成功！");
			mav.setViewName("register_success");
			
		} else if ("activate".equals(action)) {

			String email = request.getParameter("email");
			String validateCode = request.getParameter("validateCode");
			try {
				sysUserService.processActivate(email, validateCode);
				System.out.println("yanz"+email);
				mav.setViewName("activate_success");
			} catch (ServiceException e) {
				request.setAttribute("message", e.getMessage());
				mav.setViewName("activate_failure");
			}

		}
		return mav;
	}
}
