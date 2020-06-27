package cn.estore.domain;

public class CartItem {
	private int cartItemId;
	private int productId;
	private int userId;
	private String productName;
	private float price;
	private int quantity;
	public int getCartItemId() {
		return cartItemId;
	}
	public void setCartItemId(int cartItemId) {
		this.cartItemId = cartItemId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public CartItem(int cartItemId, int productId, int userId, String productName, float price, int quantity) {
		super();
		this.cartItemId = cartItemId;
		this.productId = productId;
		this.userId = userId;
		this.productName = productName;
		this.price = price;
		this.quantity = quantity;
	}
	public CartItem() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
