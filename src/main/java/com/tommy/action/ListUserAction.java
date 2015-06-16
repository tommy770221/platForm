package com.tommy.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.tommy.model.User;
import com.tommy.service.UserService;

public class ListUserAction extends  ActionSupport{

	private User user=new User();   
    private UserService service;
    private List<User> userList= new ArrayList<User>();
    
    public List<User> getUserList() {
		return userList;
	}
	public void setUserList(List<User> userList) {
		this.userList = userList;
	}
	public UserService getService() {   
        return service;   
    }   
    public void setService(UserService service) {   
        this.service = service;   
    }   
    public User getUser() {   
        return user;   
    }   
    public void setUser(User user) {   
        this.user = user;   
    }   
    @Override  
    public String execute() throws Exception    
    {    
    	
        userList=service.findAll();   
        return SUCCESS;  
    }      
	
}
