package cn.estore.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.estore.domain.Product;
import cn.estore.service.ProductService;

@Controller
@RequestMapping("/")
public class ProductController {
	private ProductService productService;
	private final int RECORD_PER_AGE = 3;
	@Autowired
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	
	
	@RequestMapping("index")
	public String index(){
		return "index";
	}
	
	
	@RequestMapping(value = {"/showAllProducts","/search"})
	public ModelAndView getProductCount(String search){
		ModelAndView mav = new ModelAndView();
		int totalRecords = productService.countProducts(search);
		int maxPageNum;
		if(totalRecords % RECORD_PER_AGE ==0){
			maxPageNum = totalRecords/RECORD_PER_AGE;
		}else{
			maxPageNum = totalRecords / RECORD_PER_AGE + 1;
		}
		mav.setViewName("forward:showProductList.do?pageNum=1&totalRecords="+ totalRecords +"&maxPageNum="+ maxPageNum);
		return mav;
	}
	
	
	@RequestMapping(value = "/showProductList")
	public ModelAndView showProductList(String search,int pageNum){
		ModelAndView mav = new ModelAndView();
		int start = (pageNum-1) * RECORD_PER_AGE;
		
		List<Product> productList = productService.selectProducts(search, start, RECORD_PER_AGE);
		mav.setViewName("product/showProducts");
		mav.addObject("productList", productList);
		return mav;
	}
	
	
	//查看商品详情时调用
		@RequestMapping(value = "/showProductById")
		public ModelAndView showProductById(int productId){
			Product product = productService.selectProductById(productId);
			ModelAndView mav = new ModelAndView();
			mav.addObject("product", product);
			mav.setViewName("product/showProductById");
			return mav;
		}
}
