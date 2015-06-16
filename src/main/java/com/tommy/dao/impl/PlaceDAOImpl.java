package com.tommy.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.tommy.dao.PlaceDAO;
import com.tommy.model.Place;

public class PlaceDAOImpl extends HibernateDaoSupport implements PlaceDAO {


	public void savePlace(Place place) {
		this.getHibernateTemplate().save(place);

	}

	
	public void removePlace(String name) {
		this.getHibernateTemplate().delete(findPlaceByName(name));

	}

	
	public List<Place> findPlaceByName(String name) {
		String hql = "from Place where name like '%"+name+"%'";
		return (List<Place>) this.getHibernateTemplate().find(hql);
	}

	
	public List<Place> findAllPlace() {
		String hql = "from Place order by name desc";   
        return (List<Place>) this.getHibernateTemplate().find(hql);  
	}

	
	public void updatePlace(Place place) {
		this.getHibernateTemplate().update(place);

	}

}
