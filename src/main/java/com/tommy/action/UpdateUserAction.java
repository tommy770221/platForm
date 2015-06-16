package com.tommy.action;

import com.opensymphony.xwork2.ActionSupport;
import com.tommy.model.User;
import com.tommy.service.UserService;

public class UpdateUserAction extends  ActionSupport {

	private User user;   
    private UserService service;   
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
    	if(user.getId()==null){
    		
    	return LOGIN;	
    	}
    	
    	else
    	{
        this.service.update(this.user);
        this.user=new User();
        return SUCCESS;
        }   
    }      
	
}