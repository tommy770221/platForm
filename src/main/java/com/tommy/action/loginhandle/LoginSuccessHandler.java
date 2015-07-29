package com.tommy.action.loginhandle;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.SharedSessionContract;
import org.hibernate.cfg.AnnotationConfiguration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;











import com.tommy.model.Role;
import com.tommy.model.User;
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
	        try {
				saveRole();
				saveRoleTest();
				saveUserTest();
				saveUser();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        mailService.sendMail("tommy770221@gmail.com", "tommy770221@gmail.com", "test Travel A", "test from travel a");
         super.onAuthenticationSuccess(request, response, authentication);
      }

	public void saveRole() throws Exception {
        Session session = null;
		try {
            SessionFactory sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
            session = sessionFactory.openSession();
            session.getTransaction().begin();
            Role role = new Role();
            role.setName("ROLE_ADMIN");
            session.save(role);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
	
	 public void saveUserTest() throws Exception {
	        Session session = null;
			try {
	            SessionFactory sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
	            session = sessionFactory.openSession();
	            session.getTransaction().begin();
	            User user = new User();
	            user.setUsername("ddkr");
	            user.setPassword("1986");
	            Role role = (Role) session.get(Role.class, 1L);
	            List<Role> roles = new ArrayList<Role>();
	            roles.add(role);
	            user.setRoles(roles);
	            session.save(user);
	            session.getTransaction().commit();
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            session.close();
	        }
	    }
	 
	public void saveRoleTest() throws Exception {
		Session session = null;
			try {
	            SessionFactory sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
	            session = sessionFactory.openSession();
	            session.getTransaction().begin();
	            Role role = new Role();
	            role.setName("ROLE_MANAGER");
	            session.save(role);
	            session.getTransaction().commit();
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            session.close();
	        }
	    }
	 
	    public void saveUser() throws Exception {
	        Session session = null;
			try {
	            SessionFactory sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
	            session = sessionFactory.openSession();
	            session.getTransaction().begin();
	            User user = new User();
	            user.setUsername("arun");
	            user.setPassword("1234");
	            Role role = (Role) session.get(Role.class, 2L);
	            List<Role> roles = new ArrayList<Role>();
	            roles.add(role);
	            user.setRoles(roles);
	            session.save(user);
	            session.getTransaction().commit();
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            session.close();
	        }
	    }
	
}
