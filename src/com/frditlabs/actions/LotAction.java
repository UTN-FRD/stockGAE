package com.frditlabs.actions;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.frditlabs.datamanager.LotManager;
import com.frditlabs.model.Lot;
import com.opensymphony.xwork2.ActionSupport;

public class LotAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private Long productId;
	private Lot lot;
	private List<Lot> lots;
	private LotManager mngr = new LotManager();
	
	/**
	 * (non-Javadoc)
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 * listar - guardar - mostrar - borrar  
	 */
	
	
	@Action(value="lots", results={
			@Result(name="success", location="lot.jsp")
	})
	public String showLots() {
		setLots(mngr.getAll(productId));
		return SUCCESS;
	}

	@Action(value="saveLot", results={
			@Result(name="success", location="lot.jsp")
	})
	public String saveLot() {
		mngr.save(lot);
		productId = lot.getProduct();
		setLots(mngr.getAll(productId));
		return SUCCESS;
	}

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	public void setProductId(String productId) {
		this.productId = Long.parseLong(productId);
	}

	public Lot getLot() {
		return lot;
	}

	public void setLot(Lot lot) {
		this.lot = lot;
	}

	public List<Lot> getLots() {
		return lots;
	}

	public void setLots(List<Lot> lots) {
		this.lots = lots;
	}
	
}
