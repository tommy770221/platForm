package com.tommy.dao;

import java.util.List;

import com.tommy.model.User;

public interface UserDAO {

	public void saveUser(User user);   
    
    public void removeUser(Integer id);   
       
    public User findUserById(Integer id);   
    
    public User findUserByUsername(String userName); 
       
    public List<User> findAllUsers();   
       
    public void updateUser(User user);   
	
	
}
