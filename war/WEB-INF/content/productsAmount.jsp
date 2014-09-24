<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="/js/jquery-2.1.1.min.js"></script>
	<link href="/css/bootstrap.css" rel="stylesheet">
	<title>Reporte de cantidad de productos</title>
</head>

<body>
	<jsp:include page="menu.jsp"></jsp:include>

	<div class="bs-docs-section">
		<div class="page-header">
			<div class="row">
				<div class="col-lg-12">
					<h1>Reporte de cantidad de productos</h1>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="bs-example">
					<div class="list-group">
						<table width="100%" align="center" class="table table-striped table-bordered table-hover">
							<tr>
								<td>
									<h3>Nombre de Producto</h3>
								</td>
								<td>
									<h3>Cantidad</h3>
								</td>
							</tr>
							<s:iterator value="productsStock" var="ps">
								<tr>
									<td>
										<p class="list-group-item-text">
											<s:property value="#ps.key.name"/>
										</p>
									</td>
									<td>
										<p class="list-group-item-text">
											<s:property value="#ps.value"/>
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