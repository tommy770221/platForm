package com.tommy.dao;

import java.util.List;

import com.tommy.model.PkList;

public interface PkListDAO {

public void savePlace(PkList pkList);   
    
    public void removePkList(Integer pkNo);   
       
    public List<PkList> findPkListByPkNo(Integer pkNo);   
       
    public List<PkList> findAllPkList();   
       
    public void updatePkList(PkList pkList); 
	
}
