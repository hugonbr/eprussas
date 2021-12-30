<%-- 
    Document   : listaClientes
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
        <form method="GET" action="dispCliente.jsp">
            <div>Lista de Clientes</div>
<%
            java.util.Iterator<aplicacao.Cliente> it = aplicacao.Aplicacao.instancia().getClientes().iterator();
            while(it.hasNext()) {
                aplicacao.Cliente c = it.next();
%>
                <div><input type="checkbox" name="cliente.ids" value="<%=c.getId()%>"/> <a href="<%=request.getContextPath()%>/dispCliente.jsp?cliente.id=<%=c.getId()%>&evento.cliente=Alterar"><%=c.getNome()%></div>
<%
            }
%>
            <div><a href="<%=request.getContextPath()%>/dispCliente.jsp?evento.cliente=Novo">[Novo Cadastro]</a>
            
            <a href="<%=request.getContextPath()%>/index.jsp">[Index]</a></div>
                
                <div><input type="submit" name="evento.cliente" value="Excluir"/> </div>
        </form>
    </body>
</html>
