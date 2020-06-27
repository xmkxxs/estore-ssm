package cn.estore.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.estore.domain.Product;

public interface ProductDao {
	public List<Product> selectProducts(@Param("productName")String productName, @Param("start")int start, @Param("limit")int limit);
	
	public Product selectProductById(int id);
	
	public int countProducts(@Param("productName")String productName);
}
