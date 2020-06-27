package cn.estore.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.estore.domain.CartItem;

public interface CartItemDao {
	//
	public int InsertIntoCart(CartItem cartItem);
	//
	public int modifyQuantity(CartItem cartItem);
	//
	public CartItem getCartItemsByUserIdAndProductId(@Param("userId")int userId, @Param("productId")int productId);

	//按照用户id查询购物车
	public List<CartItem> getCartItemsByUserId(int userId);
	
	//从购物车删除一条记录，数量改为0的时候触发
	public int removeCartItem(CartItem cartItem);
	
	//清空购物车，主动点击清除或者提交订单后清除
	public int clearCart(int userId);
}
