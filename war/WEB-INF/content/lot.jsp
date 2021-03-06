<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="/js/jquery-2.1.1.min.js"></script>
	<link href="/css/bootstrap.css" rel="stylesheet">
	<title>Lotes</title>
</head>

<body>
	<jsp:include page="menu.jsp"></jsp:include>

	<div class="bs-docs-section">
		<div class="page-header">
			<div class="row">
				<div class="col-lg-12">
					<h1>Lotes</h1>
				</div>
			</div>
		</div>
		<div class="row center-block">
			<div class="" style="width:50%;margin:auto">
				<div class="well well-lg">
					<s:form action="saveLot" cssClass="form-horizontal">
						<fieldset>
							<legend>Registro de nuevo lote del producto</legend>
							<s:hidden name="lot.product" value="%{productId}"></s:hidden>
							<!-- completar con los campos necesarios para el lote -->
							<!-- Fecha de Creación:<input type="text" name="createDate"><br> -->
							<s:textfield key="lot.dueDate" label="Fecha de Vencimiento" cssClass="form-control"></s:textfield>
							<s:textfield key="lot.initialAmount" label="Monto inicial" cssClass="form-control"></s:textfield>
							<s:submit value="Enviar Consulta" type="input" cssClass="btn btn-primary"></s:submit>
						</fieldset>
					</s:form>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="list-group-item-heading">Lotes del Producto</h3>
					</div>
					<table width="100%" align="center" class="table table-striped table-bordered table-hover">
						<tr>
							<th><h3>ID</h3></th>
							<th><h3>Fecha de Vencimiento</h3></th>
							<th><h3>Cantidad Inicial</h3></th>
							<th><h3>ID Producto</h3></th>
							<th></th>
						</tr>
						<s:iterator value="lots" var="l">
							<tr>
								<td>
									<p class="list-group-item-text">
										<s:property value="#l.id"/>
									</p>
								</td>
								<td>
									<p class="list-group-item-text">
										<s:property value="#l.dueDate"/>
									</p>
								</td>
								<td>
									<p class="list-group-item-text">
										<s:property value="#l.initialAmount"/>
									</p>
								</td>
								<td>
									<p class="list-group-item-text">
										<s:property value="#l.product"/>
									</p>
								</td>
								<td>
									<s:url var="urlMovement" action="movements" >
										<s:param name="lotId" value="#l.id"></s:param>
									</s:url>
									<s:a href="%{urlMovement}" cssClass="btn btn-primary btn-xs">Editar</s:a>
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