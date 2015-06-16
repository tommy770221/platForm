package com.tommy.item.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.tommy.model.Items;
import com.tommy.service.ItemService;

public class ListItemAction extends ActionSupport{
	
	private Items items;
	private ItemService itemService;
	private List<Items> itemsList= new ArrayList<Items>();
	
	public List<Items> getItemsList() {
		return itemsList;
	}
	public void setItemsList(List<Items> itemsList) {
		this.itemsList = itemsList;
	}
	public Items getItems() {
		return items;
	}
	public void setItems(Items items) {
		this.items = items;
	}
	public ItemService getItemService() {
		return itemService;
	}
	public void setItemService(ItemService itemService) {
		this.itemService = itemService;
	}
	
	
	
	@Override  
    public String execute() throws Exception    
    {    
		
		itemsList=itemService.findAll();
		
		return SUCCESS;
    }

}
