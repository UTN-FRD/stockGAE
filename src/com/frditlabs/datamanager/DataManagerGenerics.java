package com.frditlabs.datamanager;

import static com.frditlabs.persistence.OfyService.ofy;

import java.util.List;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;

public class DataManagerGenerics <T> {
	
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	private Class<T> clazz;

	public DataManagerGenerics(Class<T> class1) {
		clazz = class1;
	}

	public void save(T p) {
		ofy().save().entity(p).now();
	}
	
	public void delete(T p) {
		ofy().delete().entity(p);
	}
	
	public List<T> getAll() {
		return ofy().load().type( clazz ).offset(0).limit(10).list();
	}

	public List<T> filter(String field, Object criteria) {
		return ofy().load().type( clazz ).filter(field, criteria).offset(0).limit(10).list();
	}

}
