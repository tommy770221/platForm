package com.tommy.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "items", catalog = "user")
public class Items {

	private int itemNo;
	private String itemName;
	private Integer price;
	private Integer cost;

	public Items() {
	}

	public Items(int itemNo) {
		this.itemNo = itemNo;
	}

	public Items(int itemNo, String itemName, Integer price, Integer cost) {
		this.itemNo = itemNo;
		this.itemName = itemName;
		this.price = price;
		this.cost = cost;
	}

	@Id
	@Column(name = "item_no", unique = true, nullable = false)
	public int getItemNo() {
		return this.itemNo;
	}

	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}

	@Column(name = "item_name")
	public String getItemName() {
		return this.itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	@Column(name = "price")
	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	@Column(name = "cost")
	public Integer getCost() {
		return this.cost;
	}

	public void setCost(Integer cost) {
		this.cost = cost;
	}
}
