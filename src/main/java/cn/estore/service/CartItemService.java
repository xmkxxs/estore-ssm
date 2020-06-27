package cn.estore.service;

import java.util.List;

import cn.estore.domain.CartItem;
import cn.estore.domain.Order;

public interface CartItemService {
	//加入购物车ﳵ
	public int addToCart(CartItem cartItem);
	
	//按照用户id查询购物车
	public List<CartItem> getCartItemsByUserId(int userId);
	
	//修改购物车数量,为0删除
	public int modifyQuantity(CartItem cartItem);
	
	//清空购物车
	public int clearCart(int userId);
	
	//提交订单时，购物车商品信息转换为订单和订单明细
	public String cartToOrder(Order order,int userId);
}
