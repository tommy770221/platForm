package com.tommy.service.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

import javax.persistence.EntityNotFoundException;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.tommy.dao.UserDAO;
import com.tommy.model.Role;
import com.tommy.model.User;

public class UserDetailServiceImpl implements UserDetailsService {

	private UserDAO userDao;
	
	public UserDAO getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}
	
	@Override
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		User user=null;
		
		 try {
	            user = userDao.findUserByUsername(username);
	            if (user == null) {
	                throw new UsernameNotFoundException("user not found");
	            }
	        } catch (Exception e) {
	            throw new EntityNotFoundException(e.getCause().getMessage());
	        }
	        String uname = user.getUsername();
	        String password = user.getPassword();
	        boolean enabled = user.getEnabled();
	        boolean accountNonExpired = Boolean.TRUE;
	        boolean credentialsNonExpired = Boolean.TRUE;
	        boolean accountNonLocked = Boolean.TRUE;
	        Collection<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
	        for (Iterator it = user.getRoles().iterator(); it.hasNext();) {
	            Role role = (Role) it.next();
	            authorities.add(new SimpleGrantedAuthority(role.getName()));
	        }
	        return new org.springframework.security.core.userdetails.User(
	                uname, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
	  
	}

}
