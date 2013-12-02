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
                <li><a href="cadastroUsuario.jsp">Cadastro de Usuário</a></li>
                <li><a href="cadastroCliente.jsp">Cadastro de Cliente</a></li>
                <li><a href="cadastroModelo.jsp">Cadastro de Modelo</a></li>
                <li><a href="cadastroMarca.jsp">Cadastro de Marca</a></li>
                <li><a href="cadastroCor.jsp">Cadastro de Cor</a></li>
            </ul>
        </div>
        <div id="conteudo">
            <span id="titulo">Cadastro de Carro</span>
            <br/><br/>
            <form action="" method="post">
                <table id="cadastro">
                    <tr>
                        <td>Modelo</td>
                        <td>
                            <select name="modelo" style="width: 200px">
                                <option selected="selected"></option>
                                <option>Gol 1.0 4p</option>
                                <option>Celta 1.0 2p</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Cor</td>
                        <td>
                            <select name="cor" style="width: 200px">
                                <option selected="selected"></option>
                                <option>Branco</option>
                                <option>Preto</option>
                                <option>Vermelho</option>
                            </select>
                        </td>
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
