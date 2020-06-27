package cn.estore.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.estore.dao.ProductDao;
import cn.estore.domain.Product;
import cn.estore.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{
	private ProductDao productDao;
	
	@Autowired
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	@Override
	public List<Product> selectProducts(String productName, int start, int limit) {
		return productDao.selectProducts(productName, start, limit);
	}

	@Override
	public Product selectProductById(int id) {
		return productDao.selectProductById(id);
	}

	@Override
	public int countProducts(String productName) {
		return productDao.countProducts(productName);
	}
	
}
