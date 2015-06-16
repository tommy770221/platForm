package com.tommy.action;


import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

import com.opensymphony.xwork2.ActionSupport;
import com.tommy.model.User;
import com.tommy.service.UserService;


public class LoginAction extends ActionSupport{

private User user;
private User userFind=new User();  
private UserService service;  
private String data;




public String getData() {
	return data;
}


public void setData(String data) {
	this.data = data;
}


public UserService getService() {
	return service;
}


public void setService(UserService service) {
	this.service = service;
}


public User getUserFind() {
	return userFind;
}


public void setUserFind(User userFind) {
	this.userFind = userFind;
}


public User getUser() {
	return user;
}


public void setUser(User user) {
	this.user = user;
}


public void validate() {
	if(user.getId()==null)
	{   //userID is blank
		addFieldError("user.id","User ID can not be blank");
	}
	if(StringUtils.isEmpty(user.getPassword()))
	{   //password is blank
		addFieldError("user.password","password can not be blank");
	}
		
}


public String execute(){
	HttpServletRequest request = ServletActionContext.getRequest();
	ArrayList<String> parameterNames = new ArrayList<String>();
	 Enumeration<String> enumeration = request.getParameterNames();
	    while (enumeration.hasMoreElements()) {
	        String parameterName = (String) enumeration.nextElement();
	        parameterNames.add(parameterName);
	    }
	    
	    for(String testPar:parameterNames){
	    	System.out.println(testPar);
	    	System.out.println(request.getParameter(testPar));
	    	//System.out.println(request.getParameter("error_description"));
	    }
	     try{
		 userFind=(User)service.findById(user.getId());
		 System.out.println("User ID "+user.getId());
		 System.out.println("User Password "+user.getPassword());
		 System.out.println("findUser ID "+userFind.getId());
		 System.out.println("findUser Password "+userFind.getPassword());
	     }
	     catch(Exception e){
	    	 System.out.println("User error");
	    	 data="login";
	    	 e.printStackTrace();
	    	 
	    	 return LOGIN;
	     }
		 if(user.getPassword().equals(userFind.getPassword()))
		    {
			 

			data="success";
			return SUCCESS;
			}
		 else{
			data="login";
		  return LOGIN;
		   }
    
}

public Object getModel() {
	
	return user;
}
 
}
