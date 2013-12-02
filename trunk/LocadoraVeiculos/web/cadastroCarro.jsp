<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LocaSystem - Cadastro de Carro</title>
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
            <span id="titulo">Cadastro de Carro</span>
            <br/><br/>
            <form action="" method="post">
                <table>
                    <tr>
                        <td>Modelo</td>
                        <td><input type="text" name="modelo" size="50"/></td>
                    </tr>
                    <tr>
                        <td>Cor</td>
                        <td><input type="text" name="cor"/></td>
                    </tr>
                    <tr>
                        <td>Ano</td>
                        <td>
                            <select name="ano" value="2014">
                                <option selected="selected"></option>
                                <%for (int i = 1990; i <= 2014; i++) {%>
                                    <option><%=i%></option>
                                <%}%>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Placa</td>
                        <td><input type="text" name="placa" size="12"/></td>
                    </tr>
                    <tr>
                        <td>Chassi</td>
                        <td><input type="text" name="chassi"/></td>
                    </tr>
                </table>
                <br/>
                <input type="submit" value="Cadastrar"/>
            </form>
        </div>
    </body>
</html>
