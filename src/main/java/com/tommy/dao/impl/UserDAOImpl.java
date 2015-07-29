package com.tommy.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate4.HibernateCallback;
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

		@Override
		public User findUserByUsername(final String userName) {
			final String hql = "select * from User u where u.username=:userName";
			@SuppressWarnings("unchecked")
			 User user=this.getHibernateTemplate().execute(new HibernateCallback() {  
	              
	            public Object doInHibernate(Session session) throws HibernateException {  
	            	 User user = (User) session.createQuery(hql).setParameter("userName", userName).uniqueResult();  
	                return user;  
	            }  
	        });  
			
			
			return user;
		}   
	  

}
