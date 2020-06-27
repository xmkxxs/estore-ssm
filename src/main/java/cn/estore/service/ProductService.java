package cn.estore.service;

import java.util.List;

import cn.estore.domain.Product;

public interface ProductService {
	public List<Product> selectProducts(String productName, int start, int limit);
	
	public Product selectProductById(int id);
	
	public int countProducts(String productName);
}
