package cn.estore.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.estore.dao.OrderDao;
import cn.estore.domain.Order;
import cn.estore.domain.OrderItem;
import cn.estore.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService{
	@Autowired
	OrderDao orderDao;
	
	
	//查看用户订单
	@Override
	public List<Order> selectOrderByUserName(String userName) {
		// TODO Auto-generated method stub
		return orderDao.selectOrderByUserName(userName);
	}


	

	//查看订单详情表
		public List<OrderItem>  selectOrderItemByOrderId(String orderId){
			return orderDao.selectOrderItemByOrderId(orderId);
		}

	//根据orderId查看订单表
	@Override
	public Order selectOrderByProductId(String orderId) {
		// TODO Auto-generated method stub
		return orderDao.selectOrderByProductId(orderId);
	}

}
