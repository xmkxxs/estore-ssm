package cn.estore.interceptor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import cn.estore.domain.Customer;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object handler) throws IOException{
		//获取Session
		HttpSession session = request.getSession();
		Customer user=(Customer)session.getAttribute("user");
		if(user!=null){
			return true;
		}
		response. setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out. print("<script>");
		out. print("alert('对不起，您尚未登录，请先登录! ');");
		out . print("window.location.href = '/estore-108430143xuming/pages/index.jsp';");
		out. print("</script>");
		return false;
	}
	
}


