package com.frditlabs.actions;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.frditlabs.datamanager.ProductManager;
import com.frditlabs.model.Product;
import com.opensymphony.xwork2.ActionSupport;

public class ProductAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	Product product;
	private List<Product> products;
	private ProductManager mngr = new ProductManager();
	private HashMap<Product, Long> productsStock;
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
	
	@Action(value="productsAmount", results= {
			@Result(name="success", location="productsAmount.jsp")
	})
	public String listProductsStock() {
		setProductsStock(mngr.currentStock());
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

	public HashMap<Product, Long> getProductsStock() {
		return productsStock;
	}

	public void setProductsStock(HashMap<Product, Long> productsStock) {
		this.productsStock = productsStock;
	}

}
