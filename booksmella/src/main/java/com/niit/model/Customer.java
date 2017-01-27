package com.niit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;


import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
  public class Customer implements Serializable {
	  @Id
	  @GeneratedValue(strategy=GenerationType.AUTO)
	  private int customerId;
	  
	  @NotEmpty(message="The customer name must not be null")
	  private String customername;
	  
	  
	  @NotEmpty(message="The customer email must not be empty")
	  private String email;
	  
	  
	  @NotEmpty(message="Phone must not empty")
	  private String phone;
	  
	  
	  @NotEmpty(message="The username must not be empty")
	  private String username;
	  
	  
	  @NotEmpty(message="The password must not be empty")
	  private String password;
	  
	  private Boolean enabled;
	  
	  @OneToOne
	  @JoinColumn(name="billingAddress")
	  private BillingAddress billingAddress;
	  
	  
	  @OneToOne
	  @JoinColumn(name="shippingAddress")
	  private ShippingAddress shippingAddress;
	  


	public int getCustomerId() {
		return customerId;
	}


	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}


	public String getCustomername() {
		return customername;
	}


	public void setCustomername(String customername) {
		this.customername = customername;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public Boolean getEnabled() {
		return enabled;
	}


	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}


	public BillingAddress getBillingAddress() {
		return billingAddress;
	}


	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}


	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}


	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	  
	  







}
