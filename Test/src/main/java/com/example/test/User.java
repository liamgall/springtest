package com.example.test;
 
import javax.validation.constraints.Size;
 
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
 
/**
 *
 * @author www.codejava.net
 *
 */
public class User {
    @NotEmpty
    @Email
    private String email;

	@NotEmpty
	@Size(min=11, max=12)
	private String phoneNumber;
	
	@NotEmpty
	@Size(min=8, max=16)
    private String password;
	
	@NotEmpty
	private String postcode5;
	
	@NotEmpty
	private String address;
	
	@NotEmpty
	private String details;
	
	@NotEmpty
	private String extra_info;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPostcode5() {
		return postcode5;
	}

	public void setPostcode5(String postcode5) {
		this.postcode5 = postcode5;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public String getExtra_info() {
		return extra_info;
	}

	public void setExtra_info(String extra_info) {
		this.extra_info = extra_info;
	}
 
}