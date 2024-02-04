package net.demo.Entities;


public class OrderItem {
   	
	private String CustomerName;
	private String PhoneNumber;
	private String email;
	private String FoodName;
	private String Extra;
	
	public String getCustomerName() {
		return CustomerName;
	}
	public void setCustomerName(String customerName) {
		this.CustomerName = customerName;
	}
	public String getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.PhoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFoodName() {
		return FoodName;
	}
	public void setFoodName(String foodName) {
		this.FoodName = foodName;
	}
	public String getExtra() {
		return Extra;
	}
	public void setExtra(String extra) {
		this.Extra = extra;
	}
	public OrderItem(String customerName, String phoneNumber, String email, String foodName, String extra) {
		super();
		this.CustomerName = customerName;
		this.PhoneNumber = phoneNumber;
		this.email = email;
		this.FoodName = foodName;
		this.Extra = extra;
	}
	
	@Override
	public String toString() {
		return "OrderItem [CustomerName=" + CustomerName + ", PhoneNumber=" + PhoneNumber + ", email=" + email
				+ ", FoodName=" + FoodName + ", Extra=" + Extra + "]";
	}
	
	
	
	

}
