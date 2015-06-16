package com.tommy.service.impl;

import java.util.List;

import com.tommy.dao.UserDAO;
import com.tommy.model.User;
import com.tommy.service.UserService;

public class UserServiceImpl implements UserService {

	private UserDAO userDao;   
    
    public UserDAO getUserDao() {   
        return userDao;   
    }   
  
    public void setUserDao(UserDAO userDao) {   
        this.userDao = userDao;   
    }   
      
       
    public void delete(Integer id)   
    {   
         this.userDao.removeUser(id);   
    }   
  
    public List<User> findAll() {   
        return this.userDao.findAllUsers();   
    }   
  
    public User findById(Integer id) {   
           
        return this.userDao.findUserById(id);   
    }   
  
    public void save(User user)    
    {   
        this.userDao.saveUser(user);   
    }   
  
    public void update(User user)    
    {   
        this.userDao.updateUser(user);   
    }   

}
