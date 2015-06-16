package com.tommy.service;

import java.util.List;

import com.tommy.model.Place;


public interface PlaceService {
	
public List<Place> findAll();   
    
    public void save(Place place);   
       
    public void delete(String name);   
       
    public List<Place> findByName(String name);   
       
    public void update(Place place);   

}
