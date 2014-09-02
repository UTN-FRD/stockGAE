<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.frditlabs.model.Product" %>
<%@ page import="com.frditlabs.actions.ProductAction" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	<jsp:include page="menu.jsp"></jsp:include>
	
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
					<form action="product" class="form-horizontal" method="post">
						<fieldset>
							<legend>Alta y modificaci&oacute;n de productos:</legend>
							<div class="form-group">
								<div class="form-group">
				                    <label for="name" class="col-lg-2 control-label">Nombre</label>
				                    <div class="col-lg-10">
				                      <input type="text" class="form-control" name="product.name" id="name" placeholder="Nombre del producto" />
				                    </div>
				                </div>
							</div>
							<div class="form-group">
								<div class="form-group">
				                    <label for="description" class="col-lg-2 control-label">Descripci&oacute;n</label>
				                    <div class="col-lg-10">
				                      <input type="text" class="form-control" id="description" name="product.description" placeholder="Descripción del producto">
				                    </div>
				                </div>
							</div>
							<input type="hidden" name="product.id" id="id">
							<s:submit value="Guardar" type="input" cssClass="btn btn-primary"></s:submit>
						</fieldset>
					</form>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="bs-example">
					<div class="list-group">
						<a href="#" class="list-group-item">
							<h4 class="list-group-item-heading">Lista de Productos</h4>
						</a>
						<table>
							<tr>
								<th><h3>Nombre</h3></th>
								<th><h3>ID</h3></th>
								<th><h3>Descripcion</h3></th>
							</tr>
							<s:iterator value="productos" var="p">
								<tr>
									<td><p class="list-group-item-text"><s:property value="#p.name"/></p></td>
									<td><p class="list-group-item-text"><s:property value="#p.id"/></p></td>
									<td><p class="list-group-item-text"><s:property value="#p.description"/></p></td>
								</tr>
							</s:iterator>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>