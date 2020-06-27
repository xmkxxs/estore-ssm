package cn.estore.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.estore.domain.Order;
import cn.estore.domain.OrderItem;

public interface OrderDao {
	public int insertIntoOrder(Order order);
	
	//查看用户订单
	public List<Order> selectOrderByUserName(String userName);
	
	//查看订单详情表
	public List<OrderItem>  selectOrderItemByOrderId(String orderId);
	
	//根据orderId查看订单表
	public Order selectOrderByProductId(String orderId);
}
