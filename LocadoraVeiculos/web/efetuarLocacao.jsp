<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LocaSystem - Efetuar Locação</title>
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
            <span id="titulo">Efetuar Locação</span>
            <br/><br/>
            <form action="" method="post">
                <table>
                    <tr>
                        <td>Cliente</td>
                        <td>
                            <select>
                                <option selected="selected"></option>
                                <option>João</option>
                                <option>Maria</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Carro</td>
                        <td>
                            <select>
                                <option selected="selected"></option>
                                <option>Gol 1.0 4p ABC-1234</option>
                                <option>Celta 1.0 2p ABC-1223</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Data de Retirada</td>
                        <td><input type="text" name="dataRetirada"/></td>
                    </tr>
                    <tr>
                        <td>Data de Devolução</td>
                        <td><input type="text" name="dataDevolucao"/></td>
                    </tr>
                </table>
                <br/>
                <input type="submit" value="Efetuar Locação"/>
            </form>
        </div>
    </body>
</html>
