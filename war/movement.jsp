<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.frditlabs.model.Movement" %>
<%@ page import="com.frditlabs.util.DateUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script src="/js/jquery-2.0.3.min.js"></script>
	<link href="/css/bootstrap.css" rel="stylesheet">
	<title>Movimientos</title>
</head>

<body>
	<jsp:include page="../resources/menu.jsp"></jsp:include>

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
		<form action="movement">
			<fieldset>
				<legend>Registro de nuevo movimiento del lote:</legend>
				<input type="hidden" name="lotId" value="<%= request.getParameter("lotId") %>">
	
				<div class="form-group">
				Fecha:<input type="date" name="date" class="form-control" value="<%= DateUtil.today4Input() %>">
				</div>
	
				<div class="form-group">
				Cantidad:<input type="text" name="cantidad" class="form-control">
				</div>
	
				<div class="form-group">
				Descripcion:<input type="text" name="description" class="form-control">
				</div>
				<input type="submit" class="btn btn-primary" value="Guardar">
			</fieldset>
		</form>
				</div>
			</div>
		</div>

		<div class="row">
		  <div class="col-lg-12">
		<!-- Tabla con todos los objetos enviados en el request desde el servlet -->
		
		<div class="panel panel-primary"><!-- panel bootstrap -->
			
			<div class="panel-heading">Movimientos del lote</div><!-- encabezado panel bootstrap -->		 	
			
			<table align="center" width="100%" class="table table-striped table-bordered table-hover">
			<%
				List<Movement> movements= (List<Movement>)request.getAttribute("movements");
			
				if( movements!=null && movements.size()>0 ){
			%>
				<thead>
					<tr>
						<th>Fecha</th>
						<th>Cantidad</th>
						<th>Descripcion</th>
					</tr>
				</thead>
			<%
					for( Movement mov : movements ) { 
			%>
					
				<tr>
					<td><%= DateUtil.format( mov.getDate() ) %></td>
					<td><%= mov.getCantidad() %></td>
					<td><%= mov.getDescription() %></td>
				</tr>
			<% 
					}
				}else{
			%>
				<tr>
					<td>No hay Movements cargados</td>
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