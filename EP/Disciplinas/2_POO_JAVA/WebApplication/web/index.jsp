<%-- 
    Document   : index
    Created on : Aug 22, 2013, 10:00:17 AM
    Author     : Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>Index</div>
        <div><a href="<%=request.getContextPath()%>/dispCliente.jsp?evento.cliente=Novo">Novo Cliente</a></div>
        <div><a href="<%=request.getContextPath()%>/dispCliente.jsp?evento.cliente=Lista">Todos os Clientes</a></div>
        <div><a href="<%=request.getContextPath()%>/dispProduto.jsp?evento.produto=Novo">Novo Produto</a></div>
        <div><a href="<%=request.getContextPath()%>/dispProduto.jsp?evento.produto=Lista">Todos os Produtos</a></div>        
        <div><a href="<%=request.getContextPath()%>/dispPedido.jsp?evento.pedido=Selecao">Novo Pedido</a></div>
        <div><a href="<%=request.getContextPath()%>/dispPedido.jsp?evento.pedido=Lista">Todos os Pedidos</a></div>        
        
    </body>
</html>
