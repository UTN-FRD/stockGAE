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
        <title>Productos Vencidos</title>
        
</head>

<body>
        <jsp:include page="../resources/menu.jsp"></jsp:include>
        
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
                        <% List<Product> products = (List<Product>)request.getAttribute("products");
                        if(products!=null && products.size()>0){
                                for( Product prod : products ) { 
                        %>
                
                <a href="#" class="list-group-item" style="margin-bottom:20px">
                      <h4 class="list-group-item-heading"><%= prod.getName() %></h4>
                      <p class="list-group-item-text"><%= prod.getDescription() %></p>
                </a>
                        <% 
                                }
                        }else{
                        %>
                <a href="#" class="list-group-item">
                  <h4 class="list-group-item-heading">No hay productos vencidos</h4>
                </a>
                        <%
                        }
                        %>        
              </div>
            </div>
          </div>
                </div>
        </div>
        
        <jsp:include page="../resources/footer.jsp"></jsp:include>
</body>
</html>