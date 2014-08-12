package com.frditlabs.datamanager;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;

public class DataManager {
	public static void save(Entity entity) {
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	    datastore.put(entity);
	}
}
