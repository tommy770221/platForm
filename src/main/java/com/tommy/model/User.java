package com.tommy.model;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "user", catalog = "user")
public class User {
	
	@Id
    @GeneratedValue
    @Column(name = "ID")
	private Integer id;   
	@Column(name = "USERNAME")
    private String username; 
	@Column(name = "PASSWORD")
    private String password;
	@Column(name = "email")
    private String email;
	@Column(name = "sex")
    private String sex;
	@Column(name = "userId")
    private String userId;
	@Column(name = "address")
	private String address;
	@Column(name = "post_no")
    private Integer post_no;
	@Column(name = "age")
    private Integer age;
	@Column(name = "enabled")
    private Boolean enabled;
	 @OneToMany(targetEntity=Role.class,cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	 @JoinTable(name = "user_roles", joinColumns = {
	 @JoinColumn(name = "userId"),}, inverseJoinColumns = {
	 @JoinColumn(name = "roleId")})
    private List<Role> roles = new ArrayList<Role>();
    
    public User(){}
    public User(Integer id, String username, String password, String email,
			String sex, String userId, String address, Integer post_no,
			Integer age,Boolean enabled,List<Role> roles) {
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
		this.enabled=enabled;
		this.roles=roles;
		
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
	public Boolean getEnabled() {
		return enabled;
	}
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}
	
	
	public List<Role> getRoles() {
		return roles;
	}
	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}   
	
	
}
