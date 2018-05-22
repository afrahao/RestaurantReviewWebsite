package com.rrs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rrs.pojo.Restaurant;
import com.rrs.pojo.SysUser;
import com.rrs.service.PreferenceService;
import com.rrs.service.ShopService;
import com.rrs.service.SysUserService;
import com.rrs.util.CookieUtils;
import com.rrs.util.JsonUtils;
import com.rrs.util.ServiceException;


@Controller
public class HomeController {
	@Autowired
	private SysUserService sysUserService;
	@Autowired
	private ShopService shopService;
	@Autowired
	private PreferenceService preferenceService;
	
	
	ArrayList<ArrayList<Restaurant>> allList;
	double Lat,Lng;
	
	//==============================首页===============================
	
	//1.跳转到首页
	@RequestMapping(value = "/index", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//获取cookie
		Cookie[] cookies = (Cookie[])request.getCookies();
		Cookie cookie = null;
		String email = null;
		cookie = CookieUtils.getCookieFromCookies(cookies, "loginuser");
		if(cookie != null)
		{
			email = cookie.getValue();
		}
		
		
		SysUser user= (SysUser)request.getSession().getAttribute("currentuser");
		
		allList= new ArrayList<ArrayList<Restaurant>>();
		List<Restaurant> list = new ArrayList<Restaurant>();
		
		
		//各个种类的list
		ArrayList<Restaurant> hot = new ArrayList<Restaurant>();
		ArrayList<Restaurant> food = new ArrayList<Restaurant>();
		ArrayList<Restaurant> fashion = new ArrayList<Restaurant>();
		ArrayList<Restaurant> health = new ArrayList<Restaurant>();
		ArrayList<Restaurant> hotel = new ArrayList<Restaurant>();
		ArrayList<Restaurant> near = new ArrayList<Restaurant>();
		

		//根据用户喜好取出商家
		if(user != null)
		{
			list = (ArrayList<Restaurant>) shopService.getRestaurantByFavor(user.getId());
		}
		else
		{
			list = shopService.getRestaurant(0, 200);
		}
		for(int i = 0;i < 8;i++)
		{
			hot.add(list.get(i));
		}

		//计算商店与定位点距离
		shopService.GetDistance(Lat, Lng, list);
		list = shopService.getRestaurantByDistanceB(list);
		for(int i = 0;i < 8;i++)
		{
			near.add(list.get(i));
		}
		
		//清空列表
		list.clear();
		//将指定种类的商家排序后取出
		list = shopService.getRestaurantByCate();
		
		//根据种类将商家加入相应的list,取前八位
		for(int i = 0;i < list.size();i++)
		{
			if(list.get(i).getCategory_id() == 4 && food.size()<8)
				food.add(list.get(i));
			else if(list.get(i).getCategory_id() == 23 && fashion.size()<8)
				fashion.add(list.get(i));
			else if(list.get(i).getCategory_id() == 134 && health.size()<8)
				health.add(list.get(i));
			else if(list.get(i).getCategory_id() == 49 && hotel.size()<8)
				hotel.add(list.get(i));
		}

		//将不同类的列表合并
		allList.add(hot);
		allList.add(food);
		allList.add(fashion);
		allList.add(health);
		allList.add(hotel);
		allList.add(near);
		
		//保存登陆状态的邮箱
		mav.addObject("loginuser", email);
		mav.addObject("current_user", user);
		mav.setViewName("index");
		return mav;
	}
	
	//2.加载首页的分区shop
	@RequestMapping(value = "/loadIndexGrid",method = {RequestMethod.GET,RequestMethod.POST })
	@ResponseBody
	public String initDetail(HttpServletRequest request, HttpServletResponse response){

		
		
		for(int i = 0; i < allList.size(); i ++)
			System.out.println(allList.get(i).size());
		
		String str = JsonUtils.ObjectToJson(allList);
		
		//System.out.println(str);
		
		return str;
		
	}
	
	//3.跳转到详情页
	@RequestMapping(value = "/indexToDetail", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView toDetail(String business_id,int list_num,HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		SysUser user= (SysUser)request.getSession().getAttribute("currentuser"); 
//		Restaurant curShop = new Restaurant();
//		for(int i = 0; i < allList.get(list_num).size() ; i++){
//			if(allList.get(list_num).get(i).getId().equals(business_id)){
//				curShop = allList.get(list_num).get(i).clone();
//				break;
//			}
//		}
		
		mav.addObject("current_user", user);
		//mav.addObject("shopItem", curShop);
		mav.setViewName("redirect:shop/goToDetail?business_id="+business_id);
		return mav;
	}
	
	//4.获得定位的经纬度
		@RequestMapping(value = "/distance",method = {RequestMethod.GET,RequestMethod.POST })
		@ResponseBody
		public String getDistance(double lat,double lng,HttpServletRequest request, HttpServletResponse response){
			
			Lat=lat;
			Lng=lng;
			System.out.println(lat+" "+lng);
			return "ok";
		}
	
	//=============================有关账户===================================
	
	//退出
	@RequestMapping(value = "/checkOut", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView checkOut(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		//删除cookie
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
		//没有注册
		if(validation == 0)
		{
			mav.addObject("mind", "no register");
			mav.addObject("keepemail", email);
			mav.setViewName("login");
		}
		//密码错误
		else if(validation == 1)
		{
			mav.addObject("keepemail", email);
			mav.addObject("mind", "wrong password");
			mav.setViewName("login");
		}
		//密码错误次数过多
		else if(validation == 3)
		{
			mav.addObject("keepemail", email);
			mav.addObject("mind", "wrong password over 5 times,please wait for 60 mins.");
			mav.setViewName("login");
		}
		//等待时间倒计时
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
			//用户选择了保存登陆状态
			if(loginkeeping.equals("on"))
			{
				response.setHeader("Access-Control-Allow-Origin","*");
				response.setHeader("Access-Control-Allow-Methods","POST");
				response.setHeader("Access-Control-Allow-Headers","x-requested-with,content-type");
				response.setContentType("text/html;charset=utf-8");
				response.setCharacterEncoding("utf-8");
				Cookie cookie = new Cookie("loginuser", email);
				cookie.setMaxAge(3600);
				//添加cookie
				response.addCookie(cookie);
			}
			
			mav.addObject("loginuser", email);
			//改了跳转到个人信息页面
			mav.setViewName("redirect:/index");
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
