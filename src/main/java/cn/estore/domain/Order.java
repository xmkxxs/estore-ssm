package cn.estore.domain;

import java.util.Date;

public class Order {
	private String orderId;
	private String name;
	private String realName;
	private String address;
	private String mobile;
	private float totalPrice;
	private String deliveryMethod;
	private String memo;
	private int deliverySign;
	private Date createTime;
	private String paymentMode;
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public float getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getDeliveryMethod() {
		return deliveryMethod;
	}
	public void setDeliveryMethod(String deliveryMethod) {
		this.deliveryMethod = deliveryMethod;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public int getDeliverySign() {
		return deliverySign;
	}
	public void setDeliverySign(int deliverySign) {
		this.deliverySign = deliverySign;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getPaymentMode() {
		return paymentMode;
	}
	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}
	public Order(String orderId, String name, String realName, String address, String mobile, float totalPrice,
			String deliveryMethod, String memo, int deliverySign, Date createTime, String paymentMode) {
		super();
		this.orderId = orderId;
		this.name = name;
		this.realName = realName;
		this.address = address;
		this.mobile = mobile;
		this.totalPrice = totalPrice;
		this.deliveryMethod = deliveryMethod;
		this.memo = memo;
		this.deliverySign = deliverySign;
		this.createTime = createTime;
		this.paymentMode = paymentMode;
	}
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", name=" + name + ", realName=" + realName + ", address=" + address
				+ ", mobile=" + mobile + ", totalPrice=" + totalPrice + ", deliveryMethod=" + deliveryMethod + ", memo="
				+ memo + ", deliverySign=" + deliverySign + ", createTime=" + createTime + ", paymentMode="
				+ paymentMode + "]";
	}
	
	
}
