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
	<title>Reporte de cantidad de productos</title>
</head>

<body>
	<jsp:include page="../resources/menu.jsp"></jsp:include>

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
		<!-- Tabla con todos los objetos enviados en el request desde el servlet -->
		<div class="table-responsive"><!-- panel bootstrap -->
			
			<table align="center" width="100%" class="table table-striped table-bordered table-hover">
			<% 
			List<Lot> lots = (List<Lot>)request.getAttribute("lots");
			if(lots!=null && lots.size()>0){
			%>
				<thead>
					<tr>
						<th>Nombre del producto</th>
						<th>Total ingresado inicialmente</th>
						<th>Cantidad actual</th>
					</tr>
				</thead>
			<%
				for( Lot l : lots ) { 
			%>
				<tr>
					<td><%= l.getProduct() %></td>
					<td><%= l.getInitialAmount() %></td>
					<td><%= l.getCurrent()%></td>
				</tr>
			<% 
				}
			}else{
			%>
				<tr>
					<td>No hay productos cargados</td>
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