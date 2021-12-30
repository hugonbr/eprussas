<%-- 
    Document   : listaCliente
    Created on : Aug 21, 2013, 9:16:32 PM
    Author     : Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="aplicacao.Cliente" id="cliente" scope="session"/>
<jsp:setProperty  name="cliente" property="*"/>

<%
    String evento = request.getParameter("evento.cliente");
    
    if(evento.equals("Salvar")) {
        
        aplicacao.Aplicacao.instancia().addCliente(cliente);
        
%>
        <jsp:forward page="/listaClientes.jsp"/>
<%
   } else if(evento.equals("Novo") ){
       
       request.getSession().removeAttribute("cliente");
%>
        <jsp:forward page="/cadCliente.jsp"/>    
<%
       } else if(evento.equals("Alterar")) {
           
              String id = request.getParameter("cliente.id");
              
              aplicacao.Cliente c = aplicacao.Aplicacao.instancia().localizarCliente(Integer.parseInt(id));
              
              request.getSession().setAttribute("cliente", c);
%>
            <jsp:forward page="/cadCliente.jsp"/>    
<%         
       } else if(evento.equals("Lista")) { 
%>
            <jsp:forward page="/listaClientes.jsp"/>    
<%         
       } else if(evento.equals("Excluir")) {
           
           String ids []= request.getParameterValues("cliente.ids");
           
           for(int i =0;i<ids.length;i++) {
               
               Integer id = Integer.parseInt(ids[i]);
               
               aplicacao.Aplicacao.instancia().removerCliente(id);
           }
 %>
            <jsp:forward page="/listaClientes.jsp"/>    
<%            
       }
%> 
        
    
    
   