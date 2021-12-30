<%-- 
    Document   : cadPedido
    Created on : Aug 21, 2013, 9:08:43 PM
    Author     : Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="aplicacao.Pedido" id="pedido" scope="session"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Pedido</title>
    </head>
    <body>
        <div>Cliente: <%=pedido.getCliente().getNome()%></div>
        <form method="GET" action="dispPedido.jsp">
            <div><select name="produto.id">
                    <% java.util.Iterator<aplicacao.Produto> itP = aplicacao.Aplicacao.instancia().getProdutos().iterator();
                    
                        while(itP.hasNext()) {
                            
                            aplicacao.Produto p = itP.next();
                    %>
                    <option value="<%=p.getId()%>"><%=p.getNome()%></option>
                    <%}
                    %>
                </select> <input type="submit" name="evento.pedido" value="Adicionar"/></div>
            <div><%  java.util.Iterator<aplicacao.Produto> itPP = pedido.getProdutos().iterator();
                    
                   while(itPP.hasNext()) {
                       
                       aplicacao.Produto p = itPP.next();                                              
                   %>
                   <div><%=p.getNome()%></div>
                   <%}%>
 </div> 
                   <div><a href="<%=request.getContextPath()%>/index.jsp">[Index]</a></div>
 <div><input type="submit" name="evento.pedido" value="Salvar"/></div>
        </form>
    </body>
</html>
