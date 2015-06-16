package com.tommy.action.loginhandle;

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;


import com.tommy.service.MailService;

public class LoginSuccessHandler extends
		SavedRequestAwareAuthenticationSuccessHandler {
    @Autowired
	MailService mailService;
    
    public MailService getMailService() {
		return mailService;
	}

	public void setMailService(MailService mailService) {
		this.mailService = mailService;
	}
	
	@Override
     public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
                                    Authentication authentication) throws ServletException, IOException {
         request.getSession().setMaxInactiveInterval(60 * 60); //one hour
         System.out.println("Session set up for 60min");
		 System.out.println(SecurityContextHolder.getContext().getAuthentication().getPrincipal());
		  UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	        System.out.println("username: " + userDetails.getUsername());
	        System.out.println("password: " + userDetails.getPassword());
	        Collection<SimpleGrantedAuthority> authorities = (Collection<SimpleGrantedAuthority>) userDetails.getAuthorities();
	        for (Iterator it = authorities.iterator(); it.hasNext();) {
	            SimpleGrantedAuthority authority = (SimpleGrantedAuthority) it.next();
	            System.out.println("Role: " + authority.getAuthority());
	        }
	       
	        mailService.sendMail("tommy770221@gmail.com", "tommy770221@gmail.com", "test Travel A", "test from travel a");
         super.onAuthenticationSuccess(request, response, authentication);
      }

	
	
}
