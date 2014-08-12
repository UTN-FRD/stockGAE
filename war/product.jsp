<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.frditlabs.model.Product" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script src="/js/jquery-2.0.3.min.js"></script>
	<link href="/css/bootstrap.css" rel="stylesheet">
	<title>Productos</title>
	
	<script type="text/javascript">
	function editar(id, name, desc){
		$('#productId').val(id);
		$('#name').val(name);
		$('#description').val(desc);
	}
	</script>
</head>

<body>
	<jsp:include page="../resources/menu.jsp"></jsp:include>
	
	<div class="bs-docs-section">
		<div class="page-header">
          <div class="row">
            <div class="col-lg-12">
              <h1>Productos</h1>
            </div>
          </div>
        </div>
		<div class="row center-block">
			<div class="" style="width:50%;margin:auto">
				<div class="well well-lg">
					<form action="product" class="form-horizontal">
						<fieldset>
							<legend>Alta y modificaci&oacute;n de productos:</legend>
							<div class="form-group">
								<div class="form-group">
				                    <label for="name" class="col-lg-2 control-label">Nombre</label>
				                    <div class="col-lg-10">
				                      <input type="text" class="form-control" name="name" id="name" placeholder="Nombre del producto">
				                    </div>
				                </div>
							</div>
							<div class="form-group">
								<div class="form-group">
				                    <label for="description" class="col-lg-2 control-label">Descripci&oacute;n</label>
				                    <div class="col-lg-10">
				                      <input type="text" class="form-control" id="description" name="description" placeholder="Descripción del producto">
				                    </div>
				                </div>
							</div>
							<input type="hidden" name="productId" id="productId">
							<input type="submit" class="btn btn-primary" value="Guardar">
						</fieldset>
					</form>
				</div>
			</div>
		</div>

		<div class="row">
		  <div class="col-lg-12">
            <div class="bs-example">
              <div class="list-group">
			<% List<Product> products = (List<Product>)request.getAttribute("products");
			if(products!=null && products.size()>0){
				for( Product prod : products ) { 
			%>
                <button type="button" class="btn btn-primary btn-xs" onclick="editar('<%= prod.getId() %>', '<%= prod.getName() %>', '<%= prod.getDescription() %>')" style="float:right;z-index:1;position:relative;top:10px;left:-10px;">Editar</button>
                <a href="lot?productId=<%= prod.getId() %>" class="list-group-item" style="margin-bottom:20px">
	              <h4 class="list-group-item-heading"><%= prod.getName() %></h4>
	              <p class="list-group-item-text"><%= prod.getDescription() %></p>
                </a>
			<% 
				}
			}else{
			%>
                <a href="#" class="list-group-item">
                  <h4 class="list-group-item-heading">No hay productos cargados</h4>
                </a>
			<%
			}
			%>	
              </div>
            </div>
          </div>
		</div>
	</div>
	
	<jsp:include page="../resources/footer.jsp"></jsp:include>
</body>
</html>