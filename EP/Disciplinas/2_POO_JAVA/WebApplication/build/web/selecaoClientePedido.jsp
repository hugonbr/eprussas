<%-- 
    Document   : cadCliente
    Created on : Aug 21, 2013, 9:08:43 PM
    Author     : Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seleção de Cliente</title>
    </head>
    <body>
        <div>Cliente</div>
        <form method="GET" action="dispPedido.jsp">
            <select name="cliente.id">

            <%
                java.util.Iterator<aplicacao.Cliente> it = aplicacao.Aplicacao.instancia().getClientes().iterator();
                
                while(it.hasNext()) {
                    
                    aplicacao.Cliente cliente = it.next();
   
                %>
                  <option value="<%=cliente.getId()%>"><%=cliente.getNome()%></option>
                <%}%>
                    
                </select>
                   
            <input type="submit" name="evento.pedido" value="+"/></div>
        </form>
                <div><a href="<%=request.getContextPath()%>/index.jsp">[Index]</a></div>
    </body>
</html>
