package entity;

import java.sql.Date;

public class Feedback {
	private Date date;
	private String username;
	private String productName;
	private String feedback;
	
	public Feedback() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Feedback(Date date, String username, String productName, String feedback) {
		super();
		this.date = date;
		this.username = username;
		this.productName = productName;
		this.feedback = feedback;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	
	
}
