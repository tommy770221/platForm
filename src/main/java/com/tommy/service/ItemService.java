package com.tommy.service;

import java.util.List;

import com.tommy.model.Items;



public interface ItemService {

    public List<Items> findAll();   
    
    public void save(Items items);   
       
    public void delete(Integer itemNo);   
       
    public Items findByItemNo(Integer itemNo);   
       
    public void update(Items items); 
	
}
