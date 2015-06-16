package com.tommy.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.tommy.dao.PkListDAO;
import com.tommy.model.PkList;
import com.tommy.model.Place;

public class PkListDAOImpl extends HibernateDaoSupport implements PkListDAO {

	public PkListDAOImpl() {
		
	}

	
	public void savePlace(PkList pkList) {
		this.getHibernateTemplate().save(pkList);

	}

	
	public void removePkList(Integer pkNo) {
		this.getHibernateTemplate().delete(findPkListByPkNo(pkNo));

	}


	public List<PkList> findPkListByPkNo(Integer pkNo) {
		String hql = "from PkList where pkNo ="+pkNo;
		return (List<PkList>) this.getHibernateTemplate().find(hql);
	}


	public List<PkList> findAllPkList() {
		String hql = "from PkList order by pkNo desc";   
        return (List<PkList>) this.getHibernateTemplate().find(hql);  
	}


	public void updatePkList(PkList pkList) {
		this.getHibernateTemplate().update(pkList);

	}

}
