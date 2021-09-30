<% String nomeEmpresa = (String)request.getAttribute("empresa"); 
System.out.println(nomeEmpresa); %>


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
            <p>
                Empresa <% out.println(nomeEmpresa); %> cadastrada com sucesso!
            </p>
        </div>
    </body>

    </html>