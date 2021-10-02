<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.com.alura.gerenciador.modelo.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listar de Empresas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
</head>
<body>
    <div class="container col-md-6">

        <div>
            <c:if test="${not empty empresa}">
                <p>
                    Empresa ${empresa} cadastrada com sucesso!
                </p>
            </c:if>
        </div>


        <h1>Lista de empresas:</h1>
        <br>

        <table class="table table-dark table-striped col-md-2">
            <thead>
              <tr>
                <th scope="col">Nome da Empresa</th>
                <th scope="col">Acoes</th>
              </tr>
            </thead>
            <tbody>
                <c:forEach items="${empresas}" var="empresa">
              <tr>
                <th scope="row">${empresa.nome}</th>
                <th scope="row"><a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id}">Remover</a><a style="margin-left:10px;" href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id}">Alterar</a></th>
              </tr>
            </c:forEach>
            </tbody>
          </table>
    </div>
</body>
</html>