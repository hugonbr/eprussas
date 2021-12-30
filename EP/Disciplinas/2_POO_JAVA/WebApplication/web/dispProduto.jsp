<%-- 
    Document   : dispProduto
    Created on : Aug 21, 2013, 9:16:32 PM
    Author     : Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="aplicacao.Produto" id="produto" scope="session"/>
<jsp:setProperty  name="produto" property="*"/>

<%
    String evento = request.getParameter("evento.produto");
    
    if(evento.equals("Salvar")) {
        
        aplicacao.Aplicacao.instancia().addProduto(produto);
        
%>
        <jsp:forward page="/listaProdutos.jsp"/>
<%
   } else if(evento.equals("Novo") ){
       
       request.getSession().removeAttribute("produto");
%>
        <jsp:forward page="/cadProduto.jsp"/>    
<%
       } else if(evento.equals("Alterar")) {
           
              String id = request.getParameter("produto.id");
              
              aplicacao.Produto p = aplicacao.Aplicacao.instancia().localizarProduto(Integer.parseInt(id));
              
              request.getSession().setAttribute("produto", p);
%>
            <jsp:forward page="/cadProduto.jsp"/>    
<%         
       } else if(evento.equals("Lista")) { 
%>
            <jsp:forward page="/listaProdutos.jsp"/>    
<%         
       } else if(evento.equals("Excluir")) {
           
           String ids []= request.getParameterValues("produto.ids");
           
           for(int i =0;i<ids.length;i++) {
               
               Integer id = Integer.parseInt(ids[i]);
               
               aplicacao.Aplicacao.instancia().removerProduto(id);
           }
 %>
            <jsp:forward page="/listaProdutos.jsp"/>    
<%            
       }
%> 
        
    
    
   