<%-- 
    Document   : listaPedidos
    Created on : Aug 22, 2013, 8:19:10 AM
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
        <form method="GET" action="dispPedido.jsp">
            <div>Lista de Pedidos</div>
<%
            java.util.Iterator<aplicacao.Pedido> it = aplicacao.Aplicacao.instancia().getPedidos().iterator();
            while(it.hasNext()) {
                aplicacao.Pedido p = it.next();
%>
                <div><input type="checkbox" name="pedido.ids" value="<%=p.getId()%>"/> <a href="<%=request.getContextPath()%>/dispPedido.jsp?pedido.id=<%=p.getId()%>&evento.pedido=Alterar"><%=p.getId()%></div>
<%
            }
%>
            <div><a href="<%=request.getContextPath()%>/dispPedido.jsp?evento.pedido=Selecao">[Novo Cadastro]</a>
            
            <a href="<%=request.getContextPath()%>/index.jsp">[Index]</a></div>
                
                <div><input type="submit" name="evento.pedido" value="Excluir"/> </div>
        </form>
    </body>
</html>
