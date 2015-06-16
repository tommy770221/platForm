package com.tommy.action;

import com.opensymphony.xwork2.ActionSupport;
import com.tommy.model.User;
import com.tommy.service.UserService;

public class SaveUserAction extends  ActionSupport {

	private User user;   
    private UserService service; 
    private User userFind=new User();  
    
    public User getUserFind() {
		return userFind;
	}
	public void setUserFind(User userFind) {
		this.userFind = userFind;
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
    	try{
   		 userFind=(User)this.service.findById(user.getId());
    	if(user.getId()==null){
    		
        	return LOGIN;	
        	}
    	else if(user.getId()==userFind.getId()){
    		System.out.println("User ID 重複");
    		return LOGIN;
    	}
    	}
    	 
    	
    	catch(Exception e){
        this.service.save(this.user);  
        return SUCCESS;
        }  
    	
    	return LOGIN;
    	
    }      
	
}
