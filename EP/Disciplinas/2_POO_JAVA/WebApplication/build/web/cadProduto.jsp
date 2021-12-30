<%-- 
    Document   : cadProduto
    Created on : Aug 21, 2013, 9:08:43 PM
    Author     : Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="aplicacao.Produto" id="produto" scope="session"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Produto</title>
    </head>
    <body>
        <div>Produto</div>
        <form method="GET" action="dispProduto.jsp">
            <div><input type="text" name="nome" value="<jsp:getProperty name="produto" property="nome"/>"/></div>
            <div><input type="submit" name="evento.produto" value="Salvar"/></div>
        </form>
    </body>
</html>
