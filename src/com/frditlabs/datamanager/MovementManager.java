package com.frditlabs.datamanager;

import java.util.List;

import com.frditlabs.model.Movement;
import com.googlecode.objectify.cmd.Query;

public class MovementManager extends DataManagerGenerics<Movement>{
	
	public MovementManager() {
		super(Movement.class);
	}

	public List<Movement> getAll(Long lotId) {
		return filter("lot", lotId);
	}
	
	public Long remainingAmount(Long lotId) {
		Long acum = 0l;
		Query<Movement> q = query("lot", lotId);
		for (Movement movement: q) {
			acum += movement.getAmount();
		}
		return acum;
	}
}
