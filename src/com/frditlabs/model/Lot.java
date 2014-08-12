package com.frditlabs.model;

import java.util.Date;

public class Lot {
	private Long id;
	private Date createDate;
	private Date dueDate;
	private double initialAmount;
	private double currentAmount;
	private Long product;

	public Lot(){}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getDueDate() {
		return dueDate;
	}
 
	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}
	//initialAmount es double, pero construyendo el getter de esta forma
	//obtengo un int(usa el cast)
	public int getInitialAmount() {
		return (int) initialAmount;
	}

	public void setInitialAmount(double initialAmount) {
		this.initialAmount = initialAmount;
	}

	public double getCurrentAmount() {
		return currentAmount;
	}
	//por otra parte, otra forma de hacerlo es haciendo un getter auxiliar
	//que "castee" el getter original
	public int getCurrent() {
		return (int) this.getCurrentAmount();
	}

	public void setCurrentAmount(double currentAmount) {
		this.currentAmount = currentAmount;
	}

	public void setProduct(Long product) {
		this.product = product;
	}

	public Long getProduct() {
		return product;
	}

	public Long getId(){
		return id;
	}

	public void setId(Long id){
		this.id = id;
	}
}