package com.tommy.service.impl;

import java.util.List;

import com.tommy.dao.PlaceDAO;
import com.tommy.model.Place;
import com.tommy.service.PlaceService;

public class PlaceServiceImpl implements PlaceService {

	private PlaceDAO placeDao;
	public PlaceDAO getPlaceDao() {
		return placeDao;
	}

	public void setPlaceDao(PlaceDAO placeDao) {
		this.placeDao = placeDao;
	}


	public List<Place> findAll() {
		
		return this.placeDao.findAllPlace();
	}

	
	public void save(Place place) {
		this.placeDao.savePlace(place);

	}

	
	public void delete(String name) {
		this.placeDao.removePlace(name);

	}


	public List<Place> findByName(String name) {
		
		return this.placeDao.findPlaceByName(name);
	}

	public void update(Place place) {
		this.placeDao.updatePlace(place);

	}

}
