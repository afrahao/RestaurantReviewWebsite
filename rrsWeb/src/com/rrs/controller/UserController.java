package com.rrs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rrs.pojo.SysUser;
import com.rrs.service.PreferenceService;
import com.rrs.service.SysUserService;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Autowired
	private SysUserService sysUserService;
	
	@Autowired
	private PreferenceService preferenceService;
	
	
	
	
	//-------------------------------------个人信息 Info-----------------------------------------
	
	//1.打开个人信息页面
	@RequestMapping("/profile")  
	public String userProfile(HttpServletRequest request, HttpServletResponse response){  

	    return "user_profile";  
	}
	
	
	//2.加载用户的信息页面上显示
	@RequestMapping("/initProfile")  
	public String userSecurity(Integer userId){  
		//现在返回的是一个字符串
		//这里可能需要返回一个User类？（但是现在还没有user类）
		
		
	    return "user";  
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
		
		
	
	//-------------------------------------个人安全 Security-----------------------------------------
	
	
	//1.打开个人安全页面
	@RequestMapping("/security")  
	public ModelAndView userSecurity(HttpServletRequest request, HttpServletResponse response){  
		SysUser user= (SysUser)request.getSession().getAttribute("currentuser"); 
		ModelAndView mav = new ModelAndView();
		mav.addObject("current_user", user);
		mav.setViewName("user_security");
	    return mav;  
	}
	
	
		
		
	//-------------------------------------个人喜好 Favor-----------------------------------------
	
	//1.打开喜好标签页面
	@RequestMapping("/favor")  
	public ModelAndView toFavor(HttpServletRequest request, HttpServletResponse response){  
		SysUser user= (SysUser)request.getSession().getAttribute("currentuser");
		ModelAndView mav = new ModelAndView();
		mav.addObject("current_user", user);
		mav.setViewName("user_favor");
		
	    return mav;  
	}		
	
	//2.加载用户的喜好标签到页面上显示
	@RequestMapping("/initFavor")  
	public @ResponseBody
	List<Integer> InitialFavor(HttpServletRequest request, HttpServletResponse response){ 
		
		SysUser user= (SysUser)request.getSession().getAttribute("currentuser");
		
		System.out.println("-----r----" + user.getId());
		int id = Integer.parseInt(user.getId());
		List<Integer> categoryIdList = preferenceService.selectPreference(id);
		
	    return categoryIdList;
	}
	
	//3.更新用户的喜好标签到后台数据库
	@RequestMapping("/updateFavor")  
	public @ResponseBody void updateFavor(Integer[] curUserFavor,HttpServletRequest request, HttpServletResponse response){ 
		SysUser user= (SysUser)request.getSession().getAttribute("currentuser");
		int userId = Integer.parseInt(user.getId());
		preferenceService.deletePreference(userId);
		
		//String curUserFavor = request.getParameter("nickname");
		for(int i=0;i<curUserFavor.length;i++){
			System.out.println(curUserFavor[i]);
		}
		
		for(int i=0;i<curUserFavor.length;i++){
			preferenceService.insertPreference(userId,curUserFavor[i]);
		}
		
	}
	
	
}