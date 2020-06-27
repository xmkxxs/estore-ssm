package cn.estore.dao;

import org.apache.ibatis.annotations.Param;

import cn.estore.domain.Customer;

public interface CustomerDao {
	public Customer login(@Param("userName")String userName,
			@Param("password")String password);
	
	//查询用户名是否被占用
	public int countCustomerByUserName(String userName);
	
	//插入新用户信息
	public int insertNewCustomer(Customer user);
	
	
}
