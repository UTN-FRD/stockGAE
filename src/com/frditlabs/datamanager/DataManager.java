package com.frditlabs.datamanager;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;

public class DataManager {
	
	static DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	
	public static void save(Entity entity) {
		datastore.put(entity);
	}
	
	public static void delete(Entity entity) {
		datastore.delete(entity.getKey());
	}
}
