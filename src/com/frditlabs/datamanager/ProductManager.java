package com.frditlabs.datamanager;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import com.frditlabs.model.Lot;
import com.frditlabs.model.Movement;
import com.frditlabs.model.Product;

public class ProductManager extends DataManagerGenerics<Product>{
	
	MovementManager movMngr;
	LotManager lotMngr;

	public ProductManager() {
		super(Product.class);
	}
	
	public HashMap<Product,Long> currentStock() {
		movMngr = new MovementManager();
		lotMngr = new LotManager();
		List<Product> products = getAll();
		HashMap<Product,Long> productsAmount = new HashMap<Product,Long>();
		for (Product p : products) {
			List<Lot> productLots = lotMngr.query("product", p.getId()).
					filter("dueDate >", new Date()).list();
			Long stock = 0l;
			for (Lot l : productLots) {
				stock += l.getInitialAmount();
				List<Movement> movementLots = movMngr.filter("lot", l.getId());
				for (Movement m : movementLots) {
					stock -= m.getAmount();
				}
			}
			productsAmount.put(p, stock);
		}
		return productsAmount;
	}
}

