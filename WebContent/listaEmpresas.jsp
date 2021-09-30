<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listar de Empresas</title>
</head>
<body>
    <div>
        <ul>
            <% 
                List<Empresa> lista = (List<Empresa>)request.getAttribute("empresas");
                for (Empresa empresa : lista){
            %>
            <li><%= empresa.getNome() %></li>
            <%
             }
            %>
        </ul>
    </div>
</body>
</html>