<%-- 
    Document   : listaCliente
    Created on : Aug 21, 2013, 9:16:32 PM
    Author     : Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="aplicacao.Pedido" id="pedido" scope="session"/>

<%
    String evento = request.getParameter("evento.pedido");
    
    if(evento.equals("Salvar")) {
        
        aplicacao.Aplicacao.instancia().addPedido(pedido);
        
%>
        <jsp:forward page="/listaPedidos.jsp"/>
<%
       } else if(evento.equals("Alterar")) {
           
              String id = request.getParameter("pedido.id");
              
              aplicacao.Pedido p = aplicacao.Aplicacao.instancia().localizarPedido(Integer.parseInt(id));
              
              request.getSession().setAttribute("pedido", p);
%>
            <jsp:forward page="/cadPedido.jsp"/>    
<%         
       } else if(evento.equals("Lista")) { 
%>
            <jsp:forward page="/listaPedidos.jsp"/>    
<%         
       } else if(evento.equals("Excluir")) {
           
           String ids []= request.getParameterValues("pedido.ids");
           
           for(int i =0;i<ids.length;i++) {
               
               Integer id = Integer.parseInt(ids[i]);
               
               aplicacao.Aplicacao.instancia().removerPedido(id);
           }
 %>
            <jsp:forward page="/listaPedidos.jsp"/>    
<%            
       } else if(evento.equals("Adicionar")) {
           
           String id= request.getParameter("produto.id");
 
           aplicacao.Produto p = aplicacao.Aplicacao.instancia().localizarProduto(Integer.parseInt(id));
           
           pedido.addProduto(p);
           
 %>
            <jsp:forward page="/cadPedido.jsp"/>    
<%            
       }else if(evento.equals("+")) {
           
           String id= request.getParameter("cliente.id");
 
           aplicacao.Cliente c = aplicacao.Aplicacao.instancia().localizarCliente(Integer.parseInt(id));
           
           aplicacao.Pedido p = new aplicacao.Pedido();
           p.setCliente(c);
           
           request.getSession().setAttribute("pedido", p);
           
 %>
            <jsp:forward page="/cadPedido.jsp"/>    
<%            
       } else if(evento.equals("Selecao")) { 
%>
            <jsp:forward page="/selecaoClientePedido.jsp"/>    
<%}
%>  

        
    
    
   