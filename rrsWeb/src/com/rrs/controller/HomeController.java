package com.rrs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.util.Random;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
		
		/***
		 * session 添加
		 */
		SysUser user = sysUserService.TestUserByEmail(email);
		request.getSession().setAttribute("currentuser", user);
		/****/
		//莽鈥澛λ喡访ε撀β陈モ�犈�
		if(validation == 0)
		{
			mav.addObject("mind", "no register");
			mav.addObject("keepemail", email);
			mav.setViewName("login");
		}
		//莽鈥澛λ喡访锯�溍┾�濃劉氓炉鈥犆犅�
		else if(validation == 1)
		{
			mav.addObject("keepemail", email);
			mav.addObject("mind", "wrong password");
			mav.setViewName("login");
		}
		//莽鈥澛λ喡访锯�溍┾�濃劉氓炉鈥犆犅伱垛�γ库��5忙卢隆
		else if(validation == 3)
		{
			mav.addObject("keepemail", email);
			mav.addObject("mind", "wrong password over 5 times,please wait for 60 mins.");
			mav.setViewName("login");
		}
		//莽颅鈥懊ヂ锯�γ︹�斅睹┾�斅疵ぢ嘎嵜堵�
		else if(validation == 4)
		{
			int wait = sysUserService.waitTime(email);
			mav.addObject("keepemail", email);
			mav.addObject("mind", "wait for "+Integer.toString(wait)+" seconds.");
			mav.setViewName("login");
		}
		//莽鈩⒙幻┾劉鈥犆λ喡惷ヅ犈�
		else
		{
			//氓藛陇忙鈥撀р�澛λ喡访λ溌ヂ惵γ┡撯偓猫娄聛盲驴聺忙艗聛莽鈩⒙幻┾劉鈥犆犅睹︹偓聛
			if(loginkeeping.equals("on"))
			{
				response.setHeader("Access-Control-Allow-Origin","*");
				response.setHeader("Access-Control-Allow-Methods","POST");
				response.setHeader("Access-Control-Allow-Headers","x-requested-with,content-type");
				response.setContentType("text/html;charset=utf-8");
				response.setCharacterEncoding("utf-8");
				Cookie cookie = new Cookie("loginuser", email);
				//脗聽忙艙鈥懊︹�⑺喢ε撆�,莽搂鈥櫭ぢ嘎好ヂ嶁�⒚ぢ铰嵜偮�
				cookie.setMaxAge(3600);
				//脗聽猫庐戮莽陆庐cookie脗聽脗聽
				response.addCookie(cookie);
			}
			
			mav.addObject("loginuser", email);
			//改了跳转到个人信息页面
			mav.setViewName("redirect:/user/profile");
		}
		return mav;
	}


	@RequestMapping("/info")
	public String restaurantInfo(HttpServletRequest request, HttpServletResponse response) {
		return "restaurant_info";
	}

	//虏芒脢脭脫脢脧盲脦篓脪禄
	@RequestMapping(value = "/testEmail")
    public void TestEmail(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String email = request.getParameter("email");
		SysUser user = sysUserService.TestUserByEmail(email);
		if(user!=null){
			PrintWriter out = response.getWriter();    //茂驴陆猫露篓茂驴陆茂驴陆茂驴陆脦卤茂驴陆茂驴陆茂驴陆
			out.print("wrong");      //茂驴陆茂驴陆茂驴陆茂驴陆茂驴陆茂驴陆茂驴陆脟掳茂驴陆茂驴陆
		}
		else{
			PrintWriter out = response.getWriter();    //茂驴陆猫露篓茂驴陆茂驴陆茂驴陆脦卤茂驴陆茂驴陆茂驴陆
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
			mav.addObject("text", "脳垄茂驴陆茂驴陆脡鹿茂驴陆茂驴陆茂驴陆");
			mav.setViewName("register_success");
			
		} else if ("activate".equals(action)) {

			String email = request.getParameter("email");
			String validateCode = request.getParameter("validateCode");
			try {
				sysUserService.processActivate(email, validateCode);
				System.out.println("yanz"+email);
				mav.setViewName("register_activate_success");
			} catch (ServiceException e) {
				request.setAttribute("message", e.getMessage());
				mav.setViewName("register_activate_failure");
			}

		}
		return mav;
	}
	
	@RequestMapping("/sendValidateCode")
	public void sendValidate(HttpServletRequest request, HttpServletResponse response){
		
		System.out.println("sendValidateCode");
		String email = request.getParameter("email");
		String verifyCode = String.valueOf(new Random().nextInt(899999) + 100000);
		System.out.println("验证码已经生成，为:"+verifyCode);
		
		System.out.println("尝试去发送验证码了。");
		sysUserService.sendValidate(email,verifyCode);
		
	}
	
	//找回密码修改密码
	@RequestMapping(value = "/fgpwUpdatepw")
	public void fgpwUpdatepw(HttpServletRequest request, HttpServletResponse response) throws IOException{

		String validateCode = request.getParameter("validateCode");
		String email = request.getParameter("email");
		String password = request.getParameter("password");	
		System.out.println("email:"+email);
		System.out.println("password:"+password);
		System.out.println("validateCode:"+validateCode);
		
		int msg = sysUserService.forgetpwUser(email, password, validateCode);
				
		if (msg == 0){
			
			PrintWriter out = response.getWriter();    //设定传参变量
			out.print("wrong");      //结果传到前端
		}else if (msg == 2){
			PrintWriter out = response.getWriter();    //设定传参变量
			out.print("expired");     //结果传到前端
			
		}else if (msg == 1){
			PrintWriter out = response.getWriter();    //设定传参变量
			out.print("success");      			//结果传到前端
		}			
	}
	
	@RequestMapping(value = "/profile",method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView User_profile(HttpServletRequest request, HttpServletResponse response){
		SysUser user= (SysUser)request.getSession().getAttribute("currentuser"); 
		ModelAndView mav = new ModelAndView();
		mav.addObject("current_user", user);
		mav.setViewName("user_profile");		
		return mav;
	}
	
	//修改个人信息
	@RequestMapping(value = "/modifyprofile")
	public void modify_profile(HttpServletRequest request, HttpServletResponse response) throws IOException{
		SysUser user= (SysUser)request.getSession().getAttribute("currentuser"); 
		String nickname = request.getParameter("nickname");
		System.out.print(nickname);
		String id = user.getId();
			
		sysUserService.modifyuserprofile(nickname, id);
		PrintWriter out = response.getWriter();    //设定传参变量
		out.print("success");      //结果传到前端
	}
	
	@RequestMapping(value = "/security",method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView User_security(HttpServletRequest request, HttpServletResponse response){
		SysUser user= (SysUser)request.getSession().getAttribute("currentuser"); 
		ModelAndView mav = new ModelAndView();
		mav.addObject("current_user", user);
		mav.setViewName("user_security");		
		return mav;
	}
	
	//修改密码
		@RequestMapping(value = "/modifypassword")
		public void modifypassword(HttpServletRequest request, HttpServletResponse response) throws IOException{

			String email = request.getParameter("email");
			String verification_code = request.getParameter("verification_code");
			String passwordsignup = request.getParameter("passwordsignup");
			String passwordsignup_confirm = request.getParameter("passwordsignup_confirm");	
			
			
			int msg = sysUserService.modifypassword(email,verification_code,passwordsignup, passwordsignup_confirm);
					
			if (msg == 0){				
				PrintWriter out = response.getWriter();    //设定传参变量
				out.print("error");      //结果传到前端
			}else if (msg == 2){
				PrintWriter out = response.getWriter();    //设定传参变量
				out.print("outdated");     //结果传到前端
				
			}else if (msg == 1){
				PrintWriter out = response.getWriter();    //设定传参变量
				out.print("success");      			//结果传到前端
			}
		}
		
}
