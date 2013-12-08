<%-- 
    Document   : pesquisaCliente
    Created on : 08/12/2013, 15:25:44
    Author     : Rafael
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.Conexao"%>
<%@page import="java.sql.Connection"%>
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
            <span id="titulo">Lista de Clientes</span>
            <br/><br/>
            <table border="1" style="border: 1px solid #4D3A2C; width:600px; text-align: left; font-family: sans-serif; border-collapse: collapse;">
                <tr>
                    <th>Nome</th><th>Cpf</th><th>Email</th><th>Telefone</th><th>Celular</th><th>Endereco</th><th>Cep</th>
                </tr>
                <%
                    Conexao conexao = new Conexao();
                    Connection con = conexao.getConnection();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery(
                            "select * from tb_cliente");

                    while (rs.next()) {
                        out.println("<tr><td>" + rs.getString("nome") + "</td><td> "
                                + rs.getString("cpf_cnpj") + "</td><td>"
                                + rs.getString("email") + "</td><td>"
                                + rs.getString("telefone") + "</td><td>"
                                + rs.getString("celular") + "</td><td>"
                                + rs.getString("endereco") + "</td><td>"
                                + rs.getString("cep") + "</td><td>"
                                + "</tr>"
                        );
                    }

                    conexao.close();
                %>

            </table>
        </div>
    </body>
</html>
