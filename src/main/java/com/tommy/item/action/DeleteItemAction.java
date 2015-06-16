package com.tommy.item.action;

import com.opensymphony.xwork2.ActionSupport;
import com.tommy.model.Items;
import com.tommy.service.ItemService;

public class DeleteItemAction extends ActionSupport{

	private Items items;
	private ItemService itemService;
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
	public String execute() throws Exception {

	    if(!this.items.equals(null))
		{
	    itemService.delete(this.items.getItemNo());		
		this.items=new Items();
		return SUCCESS;
		}
	    else {
	    	return LOGIN;
	    }
	
	
	
	}
	
	
	
	
	
	
}
