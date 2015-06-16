package com.tommy.service.impl;

import java.util.List;

import com.tommy.dao.ItemsDAO;
import com.tommy.model.Items;
import com.tommy.service.ItemService;

public class ItemServiceImpl implements ItemService {

	private ItemsDAO itemsDAO;
	
	
	public ItemsDAO getItemsDAO() {
		return itemsDAO;
	}

	public void setItemsDAO(ItemsDAO itemsDAO) {
		this.itemsDAO = itemsDAO;
	}

	public List<Items> findAll() {
		
		return this.itemsDAO.findAllItems();
	}

	public void save(Items items) {
	 
       this.itemsDAO.saveItems(items);
	}

	public void delete(Integer itemNo) {
		
       this.itemsDAO.removeItems(itemNo);
	}

	public Items findByItemNo(Integer itemNo) {
		
		return this.itemsDAO.findItemsByItemNo(itemNo);
	}

	public void update(Items items) {
		
        this.itemsDAO.updateItems(items);
	}

}
