package com.tommy.item.action;

import com.opensymphony.xwork2.ActionSupport;
import com.tommy.model.Items;
import com.tommy.service.ItemService;

public class SaveItemAction extends ActionSupport{
         
	
	private Items items;
	private ItemService itemService;
	private Items itemsFind=new Items();
	public Items getItemsFind() {
		return itemsFind;
	}
	public void setItemsFind(Items itemsFind) {
		this.itemsFind = itemsFind;
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
	 if(items.getItemName().equals(null) || items.getItemName().equals("") || items.getItemNo()==0){
  	  System.out.println("貨號不可為空");
	      return LOGIN;
      }
    else { 
		try{
			itemsFind=(Items) itemService.findByItemNo(items.getItemNo());
	
		   if(itemsFind.getItemNo()!=0&&(this.items.getItemNo()==itemsFind.getItemNo())){
			        System.out.println("貨號重複");
			        return LOGIN;
		        }    
		    
		    else {
		    	if(itemsFind.getItemNo()==0){
		    		return LOGIN;
		    	 }
		    	else{
		        System.out.println("例外");		
		    	return LOGIN;
		    	}
		    }

		
		}catch(Exception e){
			
			itemService.save(this.items);
	    	return SUCCESS;
			
		}
		
      }
    }
	
	
}
