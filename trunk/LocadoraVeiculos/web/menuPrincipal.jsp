<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LocaSystem - Menu Principal</title>
        <style type="text/css">
            body {
                font-family: arial;
            }
            div#logo {
                background-color: #138900;
                color: white;
                border-radius: 5px;
                width: 100%;
                height: 50px;
            }
            #logo span {
                margin: 10px;
                font-size: 30px;
            }
            #primeiroMenu {
                border-top-left-radius: 10px;
                border-top-right-radius: 10px;
            }
            #ultimoMenu {
                border-bottom-left-radius: 10px;
                border-bottom-right-radius: 10px;
            }
            div#menu {
                background-color: aqua;
                border-radius: 10px;
                width: 12em;
                float: left;
                height: 500px;
                background-color: #138900;
            }
            #menu {
                font-weight: bold;
            }
            #menu a {
                display: block;
                width: 12em;
                color: white;
                text-decoration: none;
                text-align: center;
                background-color: #138900;
            }
            #menu a:hover {
                background-color: #389E28;
            }
            #menu ul {
                margin: 0px;
                padding: 0px;
                list-style-type: none;
            }
            div#conteudo {
                background-color: yellow;
                float: left;
                margin-left: 15px;
                width: 82%;
                height: 480px;
            }
            #conteudo {
                padding: 10px;
            }
        </style>
    </head>
    <body>
        <div id="logo">
            <span>LocaSystem</span>
        </div>
        <br/>
        <div id="menu">
            <ul>
                <li><a href="menuPrincipal.jsp" id="primeiroMenu">Home</a></li>
                <li><a href="cadastroCarro.jsp">Cadastro de Carro</a></li>
                <li><a href="cadastroPessoa.jsp" id="ultimoMenu">Cadastro de Pessoa</a></li>
            </ul>
        </div>
        <div id="conteudo">
            Seja Bem-Vindo!
        </div>
    </body>
</html>
