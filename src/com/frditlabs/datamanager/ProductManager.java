package com.frditlabs.datamanager;

import com.frditlabs.model.Product;
import static com.frditlabs.persistence.OfyService.ofy;

public class ProductManager {

	public static void save(Product p) {
		ofy().save().entity(p);
	}
	
	public static void delete(Product p) {
		ofy().delete().entity(p);
	}
}
