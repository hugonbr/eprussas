<%-- 
    Document   : cadCliente
    Created on : Aug 21, 2013, 9:08:43 PM
    Author     : Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="aplicacao.Cliente" id="cliente" scope="session"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Cliente</title>
    </head>
    <body>
        <div>Cliente</div>
        <form method="GET" action="dispCliente.jsp">
            <div><input type="text" name="nome" value="<jsp:getProperty name="cliente" property="nome"/>"/></div>
            <div><input type="submit" name="evento.cliente" value="Salvar"/></div>
        </form>
    </body>
</html>
