<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LocaSystem - Cadastro de Cor</title>
        <link rel="stylesheet" type="text/css" href="basico.css"/>
    </head>
    <body>
        <div id="logo">
            <span>LocaSystem</span>
        </div>
        <br/>
        <div id="menu">
            <ul>
                <li><a href="menuPrincipal.jsp" id="primeiroMenu">Home</a></li>
                <li><a href="efetuarLocacao.jsp">Efetuar Locação</a></li>
                <li><a href="cadastroCarro.jsp">Cadastro de Carro</a></li>
                <li><a href="cadastroPessoa.jsp">Cadastro de Pessoa</a></li>
                <li><a href="cadastroModelo.jsp">Cadastro de Modelo</a></li>
                <li><a href="cadastroCor.jsp">Cadastro de Cor</a></li>
            </ul>
        </div>
        <div id="conteudo">
            <span id="titulo">Cadastro de Cor</span>
            <br/><br/>
            <table>
                <tr>
                    <td>Cor</td>
                    <td><input type="text" name="cor"/></td>
                </tr>
            </table>
            <br/>
            <input type="submit" value="Cadastrar"/>
        </div>
    </body>
</html>
