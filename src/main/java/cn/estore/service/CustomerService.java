package cn.estore.service;

import cn.estore.domain.Customer;

public interface CustomerService {
	public Customer login(String userName,String password);
	
	//查询用户名是否被占用
		public int countCustomerByUserName(String userName);
		
		//插入新用户信息
		public int insertNewCustomer(Customer user);
}
