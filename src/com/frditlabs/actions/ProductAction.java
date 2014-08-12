package com.frditlabs.actions;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.frditlabs.datamanager.ProductManager;
import com.frditlabs.model.Product;
import com.opensymphony.xwork2.ActionSupport;

public class ProductAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	Product product;
	List<Product> productos = new ArrayList<Product>();
	public List<Product> getProductos() {
		return productos;
	}

	public void setProductos(List<Product> productos) {
		this.productos = productos;
	}

	/**
	 * (non-Javadoc)
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 * listar - guardar - mostrar - borrar  
	 */
	@Action(value="productos", results={
			@Result(name="success",location="product.jsp")
		})
	public String execute(){
		//llamada al DS
		product = new Product();
		product.setId(5l);
		product.setDescription("list descripcion");
		product.setName("list");
		productos.add(product);
		
		product = new Product();
		product.setId(6l);
		product.setDescription("list 5 descripcion");
		product.setName("list 6");
		productos.add(product);
		
		product = new Product();
		product.setId(7l);
		product.setDescription("list descripcion 7");
		product.setName("list 7");
		productos.add(product);
		
		ProductManager.save(product);
		
		return SUCCESS;
	}

	@Action(value="producto", results={
			@Result(name="success",location="product.jsp")
		})
	public String showProduct(){
		// http://localhost:8888/producto?product.id=1
		// en este caso el objeto producto ya está inicializado y el único valor que tiene es el id 
		product.setDescription("show Product");
		product.setName("Show");
		
		return SUCCESS;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}
