<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:set var="todayDate" value="%{@com.frditlabs.util.DateUtil@today()}"></s:set>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="/js/jquery-2.1.1.min.js"></script>
	<link href="/css/bootstrap.css" rel="stylesheet">
	<title>Movimientos</title>
</head>

<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="bs-docs-section">
		<div class="page-header">
			<div class="row">
				<div class="col-lg-12">
					<h1>Movimientos</h1>
				</div>
			</div>
		</div>
		<div class="row center-block">
			<div class="" style="width:50%;margin:auto">
				<div class="well well-lg">
					<s:form action="saveMovement" cssClass="form-horizontal">
						<fieldset>
							<legend>Registro de nuevo movimiento del lote</legend>
							<s:hidden name="movement.lot" value="%{lotId}"></s:hidden>
							<s:textfield name="movement.date" value="%{#todayDate}" label="Fecha" cssClass="form-control"></s:textfield>
							<s:textfield key="movement.amount" label="Cantidad" cssClass="form-control"></s:textfield>
							<s:textfield key="movement.description" label="Descripcion" cssClass="form-control"></s:textfield>
							<s:submit cssClass="btn btn-primary" type="input" value="Guardar"></s:submit>
						</fieldset>
					</s:form>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="list-group-item-heading">Movimientos del Lote</h3>
					</div>
					<table width="100%" align="center" class="table table-striped table-bordered table-hover">
						<tr>
							<th><h3>ID</h3></th>
							<th><h3>Fecha</h3></th>
							<th><h3>Cantidad</h3></th>
							<th><h3>Descripcion</h3></th>
							<th><h3>ID Lote</h3></th>
						</tr>
						<s:iterator value="movements" var="m">
							<tr>
								<td>
									<p class="list-group-item-text">
										<s:property value="#m.id"/>
									</p>
								</td>
								<td>
									<p class="list-group-item-text">
										<s:property value="#m.date"/>
									</p>
								</td>
								<td>
									<p class="list-group-item-text">
										<s:property value="#m.amount"/>
									</p>
								</td>
								<td>
									<p class="list-group-item-text">
										<s:property value="#m.description"/>
									</p>
								</td>
								<td>
									<p class="list-group-item-text">
										<s:property value="#m.lot"/>
									</p>
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