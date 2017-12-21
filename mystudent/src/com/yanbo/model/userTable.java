package com.yanbo.model;

public class userTable {
	/* mystudent=>usertable  
	 * username varchar(20) PK 
	 * password varchar(20) */
	
	private String username;
	private String password;
	public userTable(){
		
	}
	public userTable (String un , String pw){
		username = un;
		password = pw;
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
}
