package cn.estore.web;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.estore.domain.Customer;
import cn.estore.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	private CustomerService customerService;
	
	@Autowired
	public void setCustomerService(CustomerService customerService){
		this.customerService=customerService;
	}
	
	//登陆
	@RequestMapping(value="/login")
	public ModelAndView login(HttpSession session,String userName,String password){
		//判断用户名和密码是否正确
		Customer user=customerService.login(userName, password);
		ModelAndView mav=new ModelAndView();
		if(user==null){
			mav.addObject("error","用户名或密码错误");
		}else{
			session.setAttribute("user", user);
			SimpleDateFormat s=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String dateStr=s.format(new Date());
			session.setAttribute("date", dateStr);
			mav.addObject("success","登陆成功！");
		}
		mav.setViewName("index");
		return mav;
	}
	
	//退出
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session){
		session.invalidate();
		ModelAndView mav=new ModelAndView();
		mav.addObject("success","成功退出！");
		mav.setViewName("index");
		return mav;
	}
	
	//跳转到注册页面
	@RequestMapping("/register")
	public String register(){
		
		return "customer/register";
	}
	
	//在注册表单提交时调用。用于验证用户名是否存在，如果不存在，向用户表中插入新用户信息
	@RequestMapping("/checkUser")
	public ModelAndView checkUserAndInsert(Customer user){
		//首先验证用户名是否存在
		String userName=user.getUserName();
		int num=customerService.countCustomerByUserName(userName);
		
		ModelAndView mav = new ModelAndView();
		
		if(num==0){
			customerService.insertNewCustomer(user);
			mav.addObject("message", "注册成功");
			mav.setViewName("forward:/showAllProducts.do");
			return mav;
		}else{
			mav.addObject("message", "用户名已经被占用，请换一个！");
			mav.setViewName("customer/register");
			return mav;
		}
		
	}
	
	
	
	
	
	
	
	
}
