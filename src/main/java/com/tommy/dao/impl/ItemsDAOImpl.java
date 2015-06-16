package com.tommy.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.tommy.dao.ItemsDAO;
import com.tommy.model.Items;


public class ItemsDAOImpl extends HibernateDaoSupport implements ItemsDAO {

	public void saveItems(Items items) {
        this.getHibernateTemplate().save(items);		

	}

	public void removeItems(Integer itemNo) {
		this.getHibernateTemplate().delete(findItemsByItemNo(itemNo));

	}

	public Items findItemsByItemNo(Integer itemNo) {
		String hql = "from Items where itemNo ="+itemNo;
		return (Items) this.getHibernateTemplate().find(hql).get(0);
	}

	public List<Items> findAllItems() {
		String hql = "from Items order by itemNo desc";   
		return (List<Items>) this.getHibernateTemplate().find(hql);
	}

	public void updateItems(Items items) {
		this.getHibernateTemplate().update(items);

	}

}
