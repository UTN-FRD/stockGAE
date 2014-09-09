package com.frditlabs.datamanager;

import java.util.List;

import com.frditlabs.model.Movement;

public class MovementManager extends DataManagerGenerics<Movement>{
	
	public MovementManager() {
		super(Movement.class);
	}

	public List<Movement> getAll(Long lotId) {
		return filter("lot", lotId);
	}
}
