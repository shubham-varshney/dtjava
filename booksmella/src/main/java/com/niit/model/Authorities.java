package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Authorities {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int authorisedId;
	
	private String username;
	
	private String authority;

	public int getAuthoritiesId() {
		return authorisedId;
	}

	public void setAuthoritiesId(int authorisedId) {
		this.authorisedId = authorisedId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}
	
	
	
}
