package com.tommy.service;

import java.util.List;

import com.tommy.model.PkList;

public interface PkListService {

public List<PkList> findAll();   
    
    public void save(PkList pkList);   
       
    public void delete(Integer pkNo);   
       
    public List<PkList> findByPkNo(Integer pkNo);   
       
    public void update(PkList pkList); 
	
}
