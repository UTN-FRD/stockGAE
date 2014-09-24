package com.frditlabs.datamanager;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.frditlabs.model.Lot;

public class LotManager extends DataManagerGenerics<Lot> {
	
	MovementManager movMngr;
	
	public LotManager() {
		super(Lot.class);
	}
	
	public List<Lot> getAll(Long productId) {
		return filter("product", productId);
	}
	
	public List<Lot> expiredLots() {
		movMngr = new MovementManager();
		List<Lot> expLotsWithStock = new ArrayList<Lot>();
		List<Lot> expLots = filter("dueDate <", new Date());
		for (Lot l : expLots) {
			Long ra = movMngr.remainingAmount(l.getId());
			if (ra <= l.getInitialAmount()) {
				expLotsWithStock.add(l);
			}
		}
		return expLotsWithStock;
	}

}
