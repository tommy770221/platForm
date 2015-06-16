package com.tommy.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.tommy.model.Place;
import com.tommy.service.PlaceService;

public class ListPlaceAction extends ActionSupport {

	private Place place;
	private PlaceService service;
	private List<Place> placeList=new ArrayList<Place>();
	public Place getPlace() {
		return place;
	}
	public void setPlace(Place place) {
		this.place = place;
	}
	public PlaceService getService() {
		return service;
	}
	public void setService(PlaceService service) {
		this.service = service;
	}
	public List<Place> getPlaceList() {
		return placeList;
	}
	public void setPlaceList(List<Place> placeList) {
		this.placeList = placeList;
	}
	
	public String execute() throws Exception    
    { 
		placeList=service.findAll();
		return SUCCESS;
		
    }
	
}
