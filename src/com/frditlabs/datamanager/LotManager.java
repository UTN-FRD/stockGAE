package com.frditlabs.datamanager;

import java.util.List;

import com.frditlabs.model.Lot;

public class LotManager extends DataManagerGenerics<Lot> {
	
	public LotManager() {
		super(Lot.class);
	}
	
	public List<Lot> getAll(Long productId) {
		return filter("product", productId);
	}

}
