package cn.estore.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cn.estore.domain.CartItem;
import cn.estore.domain.Customer;
import cn.estore.domain.Order;
import cn.estore.service.CartItemService;

@Controller
@RequestMapping("/cart")
public class CartItemServiceController {
private CartItemService cartItemService;
	
	@Autowired
	public void setCustomerService(CartItemService cartItemService){
		this.cartItemService=cartItemService;
	}
	
	
	@RequestMapping("/addCart")
	public ModelAndView addCart(HttpSession session, CartItem cartItem) {
		Customer customer=(Customer) session.getAttribute("user");
		Integer id=customer.getId();
		cartItem.setUserId(id);
		cartItemService.addToCart(cartItem);
		ModelAndView mav=new ModelAndView();
		mav.addObject("message", "加入购物车成功！");
		mav.addObject("productId", cartItem.getProductId());
		mav.setViewName("forward:/showAllProducts.do");
		return mav;
	}
	
	//查看购物车
	@RequestMapping("/showCart")
	public ModelAndView showCart(HttpSession session) {
		//从session中获得用户对象，获得用户id
		Customer customer=(Customer) session.getAttribute("user");
		Integer userId=customer.getId();
		System.out.println(userId);
		//调用service的××方法，查询这个用户的购物车
		List<CartItem> list=new ArrayList<>();//必须先进行初始化
		list=cartItemService.getCartItemsByUserId(userId);
		//将查询结果list存放在model中
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		//在服务器端计算商品总价
		float allPrice=0;
		for(int i=0;i<list.size();i++) {//逐一取出,也可以用迭代器取出
			Integer num=list.get(i).getQuantity();
			allPrice+=list.get(i).getPrice()*num;
		}
		mav.addObject("allPrice", allPrice);
        //跳转到showCart.jsp
		mav.setViewName("cart/showCart");
		return mav;
     }

	// 修改数量（修改和删除统一）
		@RequestMapping("/modifyQuantity")
		public String modifyQuantity(CartItem cartItem) {
			//调用service的modify***方法（可能是删，可能是改数量）
			cartItemService.modifyQuantity(cartItem);
			//返回显示购物的页面
			return "index";
		}
		
	//清空购物车	
	    @RequestMapping("/clearCart")
		public String clearCart(HttpSession session) {
	         //调用service的clear××方法 
	    	Customer c=(Customer) session.getAttribute("user");
	    	Integer userId=c.getId();
	    	cartItemService.clearCart(userId);
	         //返回显示购物的页面
	    	return "index";
	    }

	    
	    //转跳
	    @RequestMapping("/cartCheckout")
		public String cartCheckout(@RequestParam(value="allPrice")float allPrice,HttpSession session,Map map) {
	    	Customer c=(Customer) session.getAttribute("user");
	    	String userName=c.getUserName();
	    	String realName=c.getRealName();
	    	String mobile=c.getMobile();
	    	
	    	map.put("allPrice", allPrice);
	    	map.put("userName", userName);
	    	map.put("realName", realName);
	    	map.put("mobile", mobile);
	    	
	    	return "cart/cartCheckOut";
		}
	    
	    
	 // 生成订单
		@RequestMapping("/cartToOrder")
		public ModelAndView cartToOrder(HttpSession session, Order order) {
			//取得当前用户id
			Customer c=(Customer) session.getAttribute("user");
			Integer userId=c.getId();
			// 调用Service的cartToOrder方法，返回值为订单号
			String orderId=cartItemService.cartToOrder(order, userId);
			//将订单号存储在model中
			ModelAndView mav=new ModelAndView();
			mav.addObject("orderId", orderId);
			//跳转回购物车页面	
			mav.setViewName("cart/showCart");
			return mav;
		}


}
