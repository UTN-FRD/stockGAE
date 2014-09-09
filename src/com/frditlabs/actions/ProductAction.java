package com.frditlabs.actions;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.frditlabs.datamanager.DataManagerGenerics;
import com.frditlabs.datamanager.ProductManager;
import com.frditlabs.model.Product;
import com.opensymphony.xwork2.ActionSupport;

public class ProductAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	Product product;
	private List<Product> products;
	private DataManagerGenerics<Product> mngr = new ProductManager();
	
	/**
	 * (non-Javadoc)
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 * listar - guardar - mostrar - borrar  
	 */
	
	
	@Action(value="productos", results={
			@Result(name="success", location="product.jsp")
		})
	public String execute(){
		//llamada al DS
		products = new ArrayList<Product>();
		product = new Product();
		product.setId(5l);
		product.setDescription("list descripcion");
		product.setName("list");
		products.add(product);
		
		product = new Product();
		product.setId(6l);
		product.setDescription("list 5 descripcion");
		product.setName("list 6");
		products.add(product);
		
		product = new Product();
		product.setId(7l);
		product.setDescription("list descripcion 7");
		product.setName("list 7");
		products.add(product);
		
		mngr.save(product);
		
		setProducts(mngr.getAll());
		
		return SUCCESS;
	}

	@Action(value="product", results={
			@Result(name="success", location="product.jsp")
		})
	public String saveProduct(){
		// http://localhost:8888/producto?product.id=1
		// en este caso el objeto producto ya está inicializado y el único valor que tiene es el id
		//productos.add(product);
		mngr.save(product);
		setProducts(mngr.getAll());
		return SUCCESS;
	}
	
	public String deleteProduct() {
		// ampliar - consultar
		mngr.delete(product);
		
		return SUCCESS;
		
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
	
	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> productos) {
		this.products = productos;
	}

}
