package com.tommy.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;


@Entity
@Table(name="pkList", catalog ="user")
public class PkList {

	
	private Integer pkNo;
	private String itemNo;
	private Integer qty;
	private Integer price;
	private Integer amount;
	private String userId;

	public PkList() {
	}

	public PkList(Integer pkNo, String itemNo, Integer qty, Integer price,
			Integer amount, String userId) {
		this.pkNo = pkNo;
		this.itemNo = itemNo;
		this.qty = qty;
		this.price = price;
		this.amount = amount;
		this.userId = userId;
	}

	@Column(name = "pkNo")
	public Integer getPkNo() {
		return this.pkNo;
	}

	public void setPkNo(Integer pkNo) {
		this.pkNo = pkNo;
	}

	@Column(name = "itemNo")
	public String getItemNo() {
		return this.itemNo;
	}

	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}

	@Column(name = "qty")
	public Integer getQty() {
		return this.qty;
	}

	public void setQty(Integer qty) {
		this.qty = qty;
	}

	@Column(name = "price")
	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	@Column(name = "amount")
	public Integer getAmount() {
		return this.amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	@Column(name = "userId")
	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
}
