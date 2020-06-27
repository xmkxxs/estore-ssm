package cn.estore.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.estore.domain.CartItem;
import cn.estore.domain.OrderItem;

public interface OrderItemDao {
	public int insertIntoOrderItem(@Param("cart")List<CartItem> cartItem,@Param("orderId")String orderId);

	
	
}
