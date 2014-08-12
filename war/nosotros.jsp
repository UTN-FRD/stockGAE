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
	<title>Sistema de Stock FRD</title>
	<style type="text/css">
	.panel-body{
		color: #13A0AA;
		background: white;
	}
	.panel-body>img{
		float:left;
	}
	.panel-body>p{
		float:right;
		width:50%;
	}
	</style>
</head>

<body>
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="navbar-header">
		  <a class="navbar-brand" href="#">Stock FRD</a>
		</div>
		<div class="navbar-collapse collapse navbar-responsive-collapse">
			<jsp:include page="../resources/userMenu.jsp"></jsp:include>
		</div><!-- /.nav-collapse -->
	</div>
	<div class="container">
		<div class="page-header" style="padding-top:50px">
			<div class="row">
	          <div class="col-lg-6">
	            <h1>Sistema de Stock</h1>
	            <p class="lead">UTN - FRD</p>
	          </div>
	        </div>
		</div>
		
		<div class="bs-docs-section">
		<div class="row">
          <div class="col-lg-4">        
            <div class="panel panel-default">
              <div class="panel-body">
                El equipo<br>
			    <a href="http://doppelme.com/create/">Crear mi avatar</a>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="panel panel-warning">
              <div class="panel-heading">
                <h3 class="panel-title">Gisela Martinez</h3>
              </div>
              <div class="panel-body">
                <p>Programadora en lo que sea, aprendiendo lo que venga. Donante de órganos. Mujer <br>
                <a href="http://ar.linkedin.com/pub/gisela-martinez/55/2ba/66b">LinkedIn</a></p>
                <img alt="" src="/img/avatar/giselamartinez.gif">
              </div>
            </div>
            <div class="panel panel-success">
              <div class="panel-heading">
                <h3 class="panel-title">Lucas Couchot</h3>
              </div>
              <div class="panel-body">
                <p>Pendiente</p>
                <img alt="" src="/img/avatar/lucascouchot.gif">
              </div>
            </div>
            <div class="panel panel-info">
              <div class="panel-heading">
                <h3 class="panel-title">Sergio Viera</h3>
              </div>
              <div class="panel-body">
                <p>El profe...<br>Creo que desarrollo software hasta cuando duermo.</p>
                <img alt="" src="/img/avatar/sergioviera.gif">
              </div>
            </div>
            <div class="panel panel-danger">
              <div class="panel-heading">
                <h3 class="panel-title">Gabriela Gomez</h3>
              </div>
              <div class="panel-body">
                <p>Pendiente</p>
				<img alt="" src="/img/avatar/sergioviera.gif">
              </div>
            </div>
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h3 class="panel-title">Jesus Biaggioni</h3>
              </div>
              <div class="panel-body">
                <p>Pendiente</p>
				<img alt="" src="/img/avatar/sergioviera.gif">
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="panel panel-danger">
              <div class="panel-heading">
                <h3 class="panel-title">Manuel Aquino</h3>
              </div>
              <div class="panel-body">
                <p>Pendiente</p>
				<img alt="" src="/img/avatar/manuelagustinaquino.gif">
              </div>
            </div>
            <div class="panel panel-success">
              <div class="panel-heading">
                <h3 class="panel-title">Matias Garc&iacute;a</h3>
              </div>
              <div class="panel-body">
              	<p>
                Estudiante de Ingenier&iacute;a de Baradero (Bs. As.).
                <br>Me gusta el asado y el vino
				<br>Pasatiempos: Basquet y Violín.
                </p>
                <img alt="" src="/img/avatar/matiasgarcia.gif">
              </div>
            </div>
            <div class="panel panel-info">
              <div class="panel-heading">
                <h3 class="panel-title">Pedro Araujo</h3>
              </div>
              <div class="panel-body">
                <p>Pendiente</p>
				<img alt="" src="/img/avatar/sergioviera.gif">
              </div>
            </div>
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h3 class="panel-title">Francisco Graziano</h3>
              </div>
              <div class="panel-body">
                <p>Pendiente</p>
				<img alt="" src="/img/avatar/sergioviera.gif">
              </div>
            </div>
            <div class="panel panel-warning">
              <div class="panel-heading">
                <h3 class="panel-title">Analia Bassin</h3>
              </div>
              <div class="panel-body">
                <p>Pendiente</p>
				<img alt="" src="/img/avatar/sergioviera.gif">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</body>
</html>