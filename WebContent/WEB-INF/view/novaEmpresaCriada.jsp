<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!DOCTYPE html>
    <html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Nova Empresa Criada</title>
    </head>

    <body>
        <div>
        <c:import url="logout-parcial.jsp"/>
    <br>
        
            <c:if test="${not empty empresa}">
                <p>
                    Empresa ${empresa} cadastrada com sucesso!
                </p>
            </c:if>

            <!--Se for vazio-->
            <c:if test="${empty empresa}">
                <p>
                    Nenhuma empresa cadastrada!
                </p>
            </c:if>
        </div>
    </body>

    </html>