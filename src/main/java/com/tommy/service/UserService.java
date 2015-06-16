package com.tommy.service;

import java.util.List;

import com.tommy.model.User;

public interface UserService {

	public List<User> findAll();   
    
    public void save(User user);   
       
    public void delete(Integer id);   
       
    public User findById(Integer id);   
       
    public void update(User user);   
	
}
