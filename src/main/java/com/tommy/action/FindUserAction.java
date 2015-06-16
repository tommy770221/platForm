package com.tommy.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.tommy.model.User;
import com.tommy.service.UserService;

public class FindUserAction extends  ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user;  
	private User userFind=new User();  
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
    {   if(user.getId()==null)
	   {
        return LOGIN;	
 	   }
	    else
	   {
    	userFind=(User)this.service.findById(user.getId());  
        
    	return SUCCESS;   }
    }
	public User getUserFind() {
		return userFind;
	}
	public void setUserFind(User userFind) {
		this.userFind = userFind;
	}      

}
