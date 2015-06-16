package com.tommy.dao;

import java.util.List;

import com.tommy.model.Items;



public interface ItemsDAO {

    public void saveItems(Items items);   
    
    public void removeItems(Integer itemNo);   
       
    public Items findItemsByItemNo(Integer itemNo);   
       
    public List<Items> findAllItems();   
       
    public void updateItems(Items items); 
	
}
