<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Productos</title>
<link href="http://localhost:8888/css/bootstrap.css" rel="stylesheet">

</head>
<body>
Informacion de productos



<table>
	<tr>
		<th>Nombre</th>
		<th>ID</th>
		<th>Descripcion</th>
	</tr>
<s:iterator value="productos" var="p">
	<tr>
		<td><s:property value="#p.name"/></td>
		<td><s:property value="#p.id"/></td>
		<td><s:property value="#p.description"/></td>
	</tr>
</s:iterator>
</table>
</body>
</html>