<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/entrada" var="link"/>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar nova empresa</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
</head>

<body>
    <div class="container mt-5">
        <form action="${link}" method="POST">
            <label for="login">Login:</label>
            <input type="text" name="login" id="login">
            <label for="senha">Senha:</label>
            <input type="password" name="senha" id="senha">
            <button type="submit" class="btn btn-success">Cadastrar</button>
            <input type="hidden" name="acao" id="acao" value="Login">
        </form>
    </div>
</body>

</html>