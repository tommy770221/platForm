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


public class LoginActionSecurity extends ActionSupport{

	 private String username;
     private String password;
     
     
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
	    System.out.println(SecurityContextHolder.getContext().getAuthentication().getPrincipal());
	    UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        System.out.println("username: " + userDetails.getUsername());
        System.out.println("password: " + userDetails.getPassword());
        Collection<SimpleGrantedAuthority> authorities = (Collection<SimpleGrantedAuthority>) userDetails.getAuthorities();
        for (Iterator it = authorities.iterator(); it.hasNext();) {
            SimpleGrantedAuthority authority = (SimpleGrantedAuthority) it.next();
            System.out.println("Role: " + authority.getAuthority());
        }
 
		  return "success";
		   
}


 
}
