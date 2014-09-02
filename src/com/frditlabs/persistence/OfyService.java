package com.frditlabs.persistence;

import com.frditlabs.model.Lot;
import com.frditlabs.model.Movement;
import com.frditlabs.model.Product;
import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyFactory;
import com.googlecode.objectify.ObjectifyService;

public class OfyService {
	
	static {
		factory().register(Product.class);
		factory().register(Lot.class);
		factory().register(Movement.class);
	}

	public static Objectify ofy() {
		return ObjectifyService.ofy();
	}

	public static ObjectifyFactory factory() {
		return ObjectifyService.factory();
	}
}
