package cn.estore.domain;

public class Product {
	private int id;//自动编号
	private int categoryMainId;//大类别id
	private int categoryBranchId;//小类别id
	private String name;//商品名称
	private String producingArea;//商品产地
	private String description;//商品描述
	private String createTime;//商品创建时间
	private float marketPrice;//商品原价
	private float sellPrice;//商品售价
	private int productAmount;//商品总量
	private String picture;//商品图片，存储的是文件名
	private int discount;//1有折扣，0无折扣
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCategoryMainId() {
		return categoryMainId;
	}
	public void setCategoryMainId(int categoryMainId) {
		this.categoryMainId = categoryMainId;
	}
	public int getCategoryBranchId() {
		return categoryBranchId;
	}
	public void setCategoryBranchId(int categoryBranchId) {
		this.categoryBranchId = categoryBranchId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getProducingArea() {
		return producingArea;
	}
	public void setProducingArea(String producingArea) {
		this.producingArea = producingArea;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public float getMarketPrice() {
		return marketPrice;
	}
	public void setMarketPrice(float marketPrice) {
		this.marketPrice = marketPrice;
	}
	public float getSellPrice() {
		return sellPrice;
	}
	public void setSellPrice(float sellPrice) {
		this.sellPrice = sellPrice;
	}
	public int getProductAmount() {
		return productAmount;
	}
	public void setProductAmount(int productAmount) {
		this.productAmount = productAmount;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	
}
