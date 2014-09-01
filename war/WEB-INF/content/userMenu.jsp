<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>

<ul class="nav navbar-nav navbar-right">
<% if( request.getUserPrincipal() == null ){ %>
    <li><a href="product">Acceder</a></li>
<% }else{ %>
	<li class="dropdown">
		<a href="#" class="dropdown-toggle" data-toggle="dropdown"><%= request.getUserPrincipal().getName() %> <b class="caret"></b></a>
		<ul class="dropdown-menu">
			<li><a href="<%= UserServiceFactory.getUserService().createLogoutURL("/") %>">Salir</a></li>
			<li class="divider"></li>
			<li><a href="/product">Productos</a></li>
		</ul>
	</li>
<% } %>
</ul>

<script>
$(".dropdown").click(function(){
	$(this).toggleClass("open");
});
</script>
  