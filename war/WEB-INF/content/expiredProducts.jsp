<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="java.util.List" %>
<%@ page import="com.frditlabs.model.Product" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="/js/jquery-2.1.1.min.js"></script>
	<link href="/css/bootstrap.css" rel="stylesheet">
	<title>Productos Vencidos</title>
</head>

<body>
	<jsp:include page="menu.jsp"></jsp:include>

	<div class="bs-docs-section">
		<div class="page-header">
			<div class="row">
				<div class="col-lg-12">
					<h1>Productos con Lotes Vencidos</h1>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="bs-example">
					<div class="list-group">
						<table width="100%" align="center" class="table table-striped table-bordered table-hover">
						<tr>
							<th><h3>ID</h3></th>
							<th><h3>Fecha de Vencimiento</h3></th>
							<th><h3>Cantidad Inicial</h3></th>
							<th><h3>ID Producto</h3></th>
						</tr>
						<s:iterator value="expLots" var="el">
							<tr>
								<td>
									<p class="list-group-item-text">
										<s:property value="#el.id"/>
									</p>
								</td>
								<td>
									<p class="list-group-item-text">
										<s:property value="#el.dueDate"/>
									</p>
								</td>
								<td>
									<p class="list-group-item-text">
										<s:property value="#el.initialAmount"/>
									</p>
								</td>
								<td>
									<p class="list-group-item-text">
										<s:property value="#el.product"/>
									</p>
								</td>
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