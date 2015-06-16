package com.tommy.dao;

import java.util.List;

import com.tommy.model.Place;



public interface PlaceDAO {

    public void savePlace(Place place);   
    
    public void removePlace(String name);   
       
    public List<Place> findPlaceByName(String name);   
       
    public List<Place> findAllPlace();   
       
    public void updatePlace(Place place);   
	
}
