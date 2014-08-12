<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.frditlabs.model.Lot" %>
<%@ page import="com.frditlabs.util.DateUtil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script src="/js/jquery-2.0.3.min.js"></script>
	<link href="/css/bootstrap.css" rel="stylesheet">
	<title>Lotes</title>
</head>

<body>
	<jsp:include page="../resources/menu.jsp"></jsp:include>

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
		<form action="lot">
			<input type="hidden" name="productId" value="<%= request.getParameter("productId") %>">
			<!-- completar con los campos necesarios para el lote -->
			<!-- Fecha de Creación:<input type="text" name="createDate"><br> -->
			<div class="form-group">
			Fecha de Vencimiento:<input type="date" name="dueDate" class="form-control">
			</div>

			<div class="form-group">
			Monto inicial:<input type="text" name="initialAmount" class="form-control">
			</div>

			<input type="submit" class="btn btn-primary">
		</form>
				</div>
			</div>
		</div>

		<div class="row">
		  <div class="col-lg-12">
		<!-- Tabla con todos los objetos enviados en el request desde el servlet -->
		<div class="table-responsive"><!-- panel bootstrap -->
			
			<table align="center" width="100%" class="table table-striped table-bordered table-hover">
			<% 
			List<Lot> lots = (List<Lot>)request.getAttribute("lots");
			if(lots!=null && lots.size()>0){
			%>
				<thead>
					<tr>
						<th>Fecha de vencimiento</th>
						<th>Cantidad inicial</th>
						<th>Cantidad actual</th>
						<th>Id Producto</th>
						<th></th>
					</tr>
				</thead>
			<%
				for( Lot l : lots ) { 
			%>
				<tr>
					<td><%= DateUtil.format( l.getDueDate() ) %></td>
					<td><%= l.getInitialAmount() %></td>
					<td><%= l.getCurrent()%></td>
					<td><%= l.getProduct() %></td>
					<td><a href="movement?lotId=<%= l.getId() %>">Detalles</a></td>
				</tr>
			<% 
				}
			}else{
			%>
				<tr>
					<td>No hay lots cargados</td>
				</tr>
			<%
			}
			%>	
			</table>
		</div>
	</div>
	          </div>
		</div>
	
	<jsp:include page="../resources/footer.jsp"></jsp:include>
</body>
</html>