package com.tommy.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user", catalog = "user")
public class User {
	
	private Integer id;   
	
    private String username;   
    private String password;
    private String email;
    private String sex;
    private String userId;
	private String address;
    private Integer post_no;
    private Integer age;
    
    
    public User(){}
    public User(Integer id, String username, String password, String email,
			String sex, String userId, String address, Integer post_no,
			Integer age) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.email = email;
		this.sex = sex;
		this.userId = userId;
		this.address = address;
		this.post_no = post_no;
		this.age = age;
	}
	
    public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getPost_no() {
		return post_no;
	}
	public void setPost_no(Integer post_no) {
		this.post_no = post_no;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}   
}
