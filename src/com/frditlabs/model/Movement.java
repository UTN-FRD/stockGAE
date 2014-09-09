package com.frditlabs.model;

import java.util.Date;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Entity
public class Movement {
	@Id private Long id;
	private Date date;
	private Long amount;
	private String description;
	@Index private Long lot;

	public Movement(){}

	public Long getId() {
		return id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setAmount(Long amount) {
		// TODO Auto-generated method stub
		this.amount= amount;
	}
	public Long getAmount() {
		return amount;
	}
//	public double getCant() {
//		return (double) this.getCantidad();
//	}
	public Long getLot() {
		return lot;
	}

	public void setLot(Long lot) {
		// TODO Auto-generated method stub
		this.lot = lot;
	}
}