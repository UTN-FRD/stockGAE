package com.frditlabs.datamanager;

import java.util.List;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;

public class DataManager {
	
	static DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	
	public static void save(Entity entity) {
		datastore.put(entity);
	}
	
	public static void delete(Entity entity) {
		datastore.delete(entity.getKey());
	}
	
	public static List<? extends Entity> getAll(String kind) {
		Query gaeQuery = new Query(kind);
		PreparedQuery pq = datastore.prepare(gaeQuery);
		List<Entity> list = pq.asList(FetchOptions.Builder.withDefaults());
		return list;
	}
}
