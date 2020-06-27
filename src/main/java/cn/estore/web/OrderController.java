package cn.estore.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cn.estore.domain.Customer;
import cn.estore.domain.Order;
import cn.estore.domain.OrderItem;
import cn.estore.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
private OrderService orderService;
	
	@Autowired
	public void setOrderDaoService(OrderService orderService){
		this.orderService=orderService;
	}
	
	//查看所有订单
	@RequestMapping(value="/showOrderDetails")
    public ModelAndView showOrderDetails(HttpSession session){
	  //按照订单号查订单信息，并存储在model中
		Customer c=(Customer) session.getAttribute("user");
		String userName=c.getUserName();
		List<Order> list=orderService.selectOrderByUserName(userName);//查看用户订单信息
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.addObject("userName",userName);
		mav.setViewName("order/orderList");
		return mav;
   }
	
	//查看某一订单详细信息
	@RequestMapping(value="/showxiangxixinxi")
	public ModelAndView showxiangxixinxi(@RequestParam(value="orderId")String orderId){
		Order order=orderService.selectOrderByProductId(orderId);
		
		
		//商品名称
		List<OrderItem> orderItem=orderService.selectOrderItemByOrderId(orderId);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("orderItem",orderItem);
		mav.addObject("order",order);
		mav.addObject("orderId",orderId);
		mav.setViewName("order/orderDetailList");
		return mav;
	}
	
	
}
