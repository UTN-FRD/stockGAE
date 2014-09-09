<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="/js/jquery-2.1.1.min.js"></script>
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
					<s:form action="product" cssClass="form-horizontal" method="post">
						<fieldset>
							<legend>Alta y modificación de productos</legend>
							<s:hidden name="product.id" value=""></s:hidden>
							<s:textfield name="product.name" value="" label="Nombre del Producto" cssClass="form-control"></s:textfield>
							<s:textfield name="product.description" value="" label="Descripción del Producto" cssClass="form-control"></s:textfield>
							<s:submit value="Guardar" type="input" cssClass="btn btn-primary"></s:submit>
						</fieldset>
					</s:form>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="list-group-item-heading">Lista de Productos</h3>
					</div>
					<table width="100%" align="center" class="table table-striped table-bordered table-hover">
						<tr>
							<th><h3>ID</h3></th>
							<th><h3>Nombre</h3></th>
							<th><h3>Descripción</h3></th>
							<th></th>
						</tr>
						<s:iterator value="products" var="p">
							<tr>
								<td>
									<p class="list-group-item-text">
										<s:property value="#p.id"/>
									</p>
								</td>
								<td>
									<p class="list-group-item-text">
										<s:property value="#p.name"/>
									</p>
								</td>
								<td>
									<p class="list-group-item-text">
										<s:property value="#p.description"/>
									</p>
								</td>
								<td>
									<s:url var="urlLot" action="lots" >
										<s:param name="productId" value="#p.id"></s:param>
									</s:url>
									<s:a href="%{urlLot}" cssClass="btn btn-primary btn-xs">Editar</s:a>
								</td>
							</tr>
						</s:iterator>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>