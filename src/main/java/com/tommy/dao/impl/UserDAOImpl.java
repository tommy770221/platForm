package com.tommy.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.tommy.dao.UserDAO;
import com.tommy.model.User;

public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {

	    public List<User> findAllUsers() {   
	        String hql = "from User order by id desc";   
	        return (List<User>) this.getHibernateTemplate().find(hql);   
	    }   
	
	    public User findUserById(Integer id) {  
	    
	        User user = (User) this.getHibernateTemplate().get(User.class, id);   
	        return user;   
	    }   
	  
	    public void removeUser(Integer id) {   
	  
	        this.getHibernateTemplate().delete(findUserById(id));   
	    }   
	  
	    public void saveUser(User user) {   
	  
	         this.getHibernateTemplate().save(user);   
	    }   
	  
	    public void updateUser(User user) {   
	  
	        this.getHibernateTemplate().update(user);   
	    }   
	  

}
