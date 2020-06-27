package cn.estore.serviceImpl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.estore.dao.CartItemDao;
import cn.estore.dao.OrderDao;
import cn.estore.dao.OrderItemDao;
import cn.estore.domain.CartItem;
import cn.estore.domain.Order;
import cn.estore.service.CartItemService;

@Service
@Transactional(isolation=Isolation.REPEATABLE_READ,propagation=Propagation.REQUIRED,readOnly = false)
public class CartItemServiceImpl implements CartItemService{
	private CartItemDao cartItemDao;
	
	@Autowired
	public void setCartItemDao(CartItemDao cartItemDao) {
		this.cartItemDao = cartItemDao;
	}
	
	@Autowired
	OrderDao orderDao;

	@Autowired
	OrderItemDao orderItemDao;
	
	@Override
	public int addToCart(CartItem cartItem) {
		CartItem c = cartItemDao.getCartItemsByUserIdAndProductId(cartItem.getUserId(), cartItem.getProductId());
		if(c!=null){
			c.setQuantity(c.getQuantity()+1);
			return cartItemDao.modifyQuantity(c);
		}else{
			return cartItemDao.InsertIntoCart(cartItem);
		}
	}

	//按用户id查询购物车
	@Override
	public List<CartItem> getCartItemsByUserId(int userId) {
		return cartItemDao.getCartItemsByUserId(userId);
	}

	//修改购物车数量
	@Override
	public int modifyQuantity(CartItem cartItem) {
		Integer num=cartItem.getQuantity();
		 if(num == 0){
			 return cartItemDao.removeCartItem(cartItem);
		 }else{
			 //  调用dao 的modify***方法，修改指定条目的quantity
			 return cartItemDao.modifyQuantity(cartItem);
		 	}
	}

	//清空购物车
	@Override
	public int clearCart(int userId) {
		// TODO Auto-generated method stub
		return cartItemDao.clearCart(userId);
	}

	//订单相关
	@Override
	public String cartToOrder(Order order,int userId) {
		// TODO Auto-generated method stub
		Date now=new Date();
		String orderId=createOrderId(now);
		order.setOrderId(orderId);
		order.setCreateTime(now);
		orderDao.insertIntoOrder(order);
		//查询用户的购物车
		List<CartItem> cart=cartItemDao.getCartItemsByUserId(userId);
		orderItemDao.insertIntoOrderItem(cart, orderId);
		cartItemDao.clearCart(userId);
		return orderId;
	}
	//生成订单
	private String createOrderId(Date now){
		StringBuffer sb=new StringBuffer();
		SimpleDateFormat s=new SimpleDateFormat("yyyyMMddHHmmssSSS");
		String dateStr=s.format(now);
		sb.append(dateStr);
		for(int i=0;i<3;i++){
			sb.append((int)(Math.random()*10));
		}
		return sb.toString();
	}

	
	
	
}
