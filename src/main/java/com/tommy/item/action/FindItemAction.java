package com.tommy.item.action;

import com.opensymphony.xwork2.ActionSupport;
import com.tommy.model.Items;
import com.tommy.service.ItemService;

public class FindItemAction extends ActionSupport{

	private Items items;
	private Items itemsFind=new Items();
	private ItemService itemService;
	public Items getItems() {
		return items;
	}
	public void setItems(Items items) {
		this.items = items;
	}
	public Items getItemsFind() {
		return itemsFind;
	}
	public void setItemsFind(Items itemsFind) {
		this.itemsFind = itemsFind;
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
		
		 if( items.getItemNo()<=0)
		   {
	        return LOGIN;	
	 	   }
		    else
		   {
		    try{
	    	itemsFind=(Items)this.itemService.findByItemNo(items.getItemNo());
	    	return SUCCESS;
	    	}catch(Exception e){
	    		return LOGIN;
	    	}   
	    	}
		
    }
	
}
