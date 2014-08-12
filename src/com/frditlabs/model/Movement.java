package com.frditlabs.model;

import java.util.Date;

public class Movement {
	private Long id;
	private Date date;
	private Long cantidad;
	private String description;
	private Long lotId;

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

	public void setCantidad(Long cantidad) {
		// TODO Auto-generated method stub
		this.cantidad = cantidad;
	}
	public Long getCantidad() {
		return cantidad;
	}
//	public double getCant() {
//		return (double) this.getCantidad();
//	}
	public Long getLotId() {
		return lotId;
	}

	public void setLotId(Long lotId) {
		// TODO Auto-generated method stub
		this.lotId = lotId;
	}
}