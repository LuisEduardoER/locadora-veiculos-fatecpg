<%-- 
    Document   : pesquisaCarro
    Created on : 08/12/2013, 14:54:45
    Author     : Rafael
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="database.Conexao"%>
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
                 <li><a href="pesquisaCarro.jsp">Lista de Carros</a></li>
                <li><a href="pesquisaCliente.jsp">Lista de Clientes</a></li>
            </ul>
        </div>
        <div id="conteudo">
            <span id="titulo">Lista de Carros</span>
            <br/><br/>
            <table border="1" style="border: 1px solid #4D3A2C; width:600px; text-align: left; font-family: sans-serif; border-collapse: collapse;">
                <tr>
                   <th>Modelo</th><th>Marca</th><th>Placa</th><th>Chassi</th><th>Cor</th><th>Diaria</th>
                </tr>
                <%
                    Conexao conexao = new Conexao();
                    Connection con = conexao.getConnection();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery(
                            "select carro.placa,carro.chassi,modelo.nome,marca.nome,cor.nome,carro.diaria from tb_carro carro "
                            + " INNER JOIN TB_MODELO modelo ON modelo.id = carro.modeloid"
                            + " INNER JOIN TB_COR cor ON cor.id = carro.corid"
                            + " INNER JOIN TB_MARCA marca on marca.id = modelo.marcaid");

                    while (rs.next()) {
                        out.println("<tr><td>" + rs.getString("modelo.nome") + "</td><td> "
                                + rs.getString("marca.nome") + "</td><td>"
                                + rs.getString("carro.placa") + "</td><td>"
                                + rs.getString("carro.chassi") + "</td><td>"
                                + rs.getString("cor.nome") + "</td><td>"
                                + rs.getString("carro.diaria") + "</td><td></tr>"
                        );
                    }

                    conexao.close();
                %>

            </table>
        </div>
    </body>
</html>
