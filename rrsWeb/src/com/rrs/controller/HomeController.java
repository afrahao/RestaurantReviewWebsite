package com.rrs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
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
import com.rrs.util.CookieUtils;
import com.rrs.util.ServiceException;

@Controller
public class HomeController {
	@Autowired
	private SysUserService sysUserService;

	@RequestMapping(value = "/index", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Cookie[] cookies = (Cookie[])request.getCookies();
		Cookie cookie = null;
		String email = null;
		cookie = CookieUtils.getCookieFromCookies(cookies, "loginuser");
		if(cookie != null)
		{
			email = cookie.getValue();
		}
		mav.addObject("loginuser", email);
		mav.setViewName("index");
		return mav;
	}
	
	@RequestMapping(value = "/checkOut", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView checkOut(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		CookieUtils.removeCookieByName("loginuser", request, response);
		mav.addObject("loginuser", null);
		mav.setViewName("index");
		return mav;
	}

	@RequestMapping("/forgetPassword")  
	public String toForgetPassword(HttpServletRequest request, HttpServletResponse response){  
	    return "forget_password";  
	}  
	
	@RequestMapping("/search")  
	public String search(HttpServletRequest request, HttpServletResponse response){  
	    return "restaurant_search";  

	}
	@RequestMapping("/tologin")  
	public String Tologin(HttpServletRequest request, HttpServletResponse response){  
	    return "login";  
	}

	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
	
		ModelAndView mav = new ModelAndView();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String loginkeeping = request.getParameter("loginkeeping");
		int validation = sysUserService.loginCheck(email, password);
		
		//用户未注册
		if(validation == 0)
		{
			mav.addObject("mind", "no register");
			mav.addObject("keepemail", email);
			mav.setViewName("login");
		}
		//用户输错密码
		else if(validation == 1)
		{
			mav.addObject("keepemail", email);
			mav.addObject("mind", "wrong password");
			mav.setViewName("login");
		}
		//用户输错密码超过5次
		else if(validation == 3)
		{
			mav.addObject("keepemail", email);
			mav.addObject("mind", "wrong password over 5 times,please wait for 60 mins.");
			mav.setViewName("login");
		}
		//等待时间不足
		else if(validation == 4)
		{
			int wait = sysUserService.waitTime(email);
			mav.addObject("keepemail", email);
			mav.addObject("mind", "wait for "+Integer.toString(wait)+" seconds.");
			mav.setViewName("login");
		}
		//登陆成功
		else
		{
			//判断用户是否需要保持登陆状态
			if(loginkeeping.equals("on"))
			{
				response.setHeader("Access-Control-Allow-Origin","*");
				response.setHeader("Access-Control-Allow-Methods","POST");
				response.setHeader("Access-Control-Allow-Headers","x-requested-with,content-type");
				response.setContentType("text/html;charset=utf-8");
				response.setCharacterEncoding("utf-8");
				Cookie cookie = new Cookie("loginuser", email);
				// 有效期,秒为单位 
				cookie.setMaxAge(3600);
				// 设置cookie  
				response.addCookie(cookie);
			}
			
			mav.addObject("loginuser", email);
			mav.setViewName("index");
		}
		return mav;
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
			PrintWriter out = response.getWriter();    //�趨���α���
			out.print("wrong");      //�������ǰ��
		}
		else{
			PrintWriter out = response.getWriter();    //�趨���α���
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
			mav.addObject("text", "ע��ɹ���");
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
