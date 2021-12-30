<%-- 
    Document   : listaProdutos
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
        <form method="GET" action="dispProduto.jsp">
            <div>Lista de Produtos</div>
<%
            java.util.Iterator<aplicacao.Produto> it = aplicacao.Aplicacao.instancia().getProdutos().iterator();
            while(it.hasNext()) {
                aplicacao.Produto p = it.next();
%>
                <div><input type="checkbox" name="produto.ids" value="<%=p.getId()%>"/> <a href="<%=request.getContextPath()%>/dispProduto.jsp?produto.id=<%=p.getId()%>&evento.produto=Alterar"><%=p.getNome()%></div>
<%
            }
%>
            <div><a href="<%=request.getContextPath()%>/dispProduto.jsp?evento.produto=Novo">[Novo Cadastro]</a>
            
            <a href="<%=request.getContextPath()%>/index.jsp">[Index]</a></div>
                
                <div><input type="submit" name="evento.produto" value="Excluir"/> </div>
        </form>
    </body>
</html>
