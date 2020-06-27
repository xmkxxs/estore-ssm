package cn.estore.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.estore.dao.CustomerDao;
import cn.estore.domain.Customer;
import cn.estore.service.CustomerService;

@Service
@Transactional(isolation=Isolation.REPEATABLE_READ,propagation=Propagation.REQUIRED,readOnly=true)
public class CustomerServiceImpl implements CustomerService {

	private CustomerDao customerDao;
	
	@Autowired
	public void setCustomerDao(CustomerDao customerDao){
		this.customerDao=customerDao;
	}
	
	@Override
	public Customer login(String userName, String password) {
		// TODO Auto-generated method stub
		return customerDao.login(userName, password);
	}
	
	//查询用户名是否存在
	@Override
	public int countCustomerByUserName(String userName) {
		// TODO Auto-generated method stub
		return customerDao.countCustomerByUserName(userName);
	}

	
	@Override
	@Transactional(isolation=Isolation.REPEATABLE_READ,propagation=Propagation.REQUIRED,
	readOnly = false)
	public int insertNewCustomer(Customer user) {
		// TODO Auto-generated method stub
		return customerDao.insertNewCustomer(user);
	}
	
}
