<%@page import="java.sql.Types"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="database.Conexao"%>
<%@page import = "java.sql.Connection,
                  java.sql.ResultSet,
                  java.sql.Statement"%>

<%
    if (request.getParameter("txtModelo") != null) {
        String modelo = request.getParameter("txtModelo");
        String marcaId = request.getParameter("cbxMarca");
        if (modelo.trim().length() > 0 && marcaId.trim().length() > 0) {
            try {
                Conexao conexao = new Conexao();
                Connection con = conexao.getConnection();
                Statement stmt = con.createStatement();
                int res = stmt.executeUpdate("INSERT INTO tb_modelo (MARCAID, NOME) " +
                                             " VALUES (" + marcaId + ", '" + modelo + "') ");
                if (res == 1) {
                    out.println("Cadastrado com sucesso!");
                } else {
                    out.println("Falha no cadastro.");
                }

                conexao.close();
            } catch (Exception ex) {
                out.println(ex.getMessage());
            }
        }
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LocaSystem - Cadastro de Modelo</title>
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
            <form method="get" action="cadastroModelo.jsp">
                <span id="titulo">Cadastro de Modelo</span>
                <br/><br/>
                <table id="cadastro">
                    <tr>
                        <td>Modelo</td>
                        <td><input type="text" name="txtModelo"/></td>
                    </tr>
                    <tr>
                        <td>Marca</td>
                        <td>
                            <select name="cbxMarca">
                                <option selected="selected"></option>
                                <%
                                    Conexao conexao = new Conexao();
                                    Connection con = conexao.getConnection();
                                    Statement st = con.createStatement();
                                    ResultSet rs = st.executeQuery(
                                            "SELECT ID, NOME FROM tb_marca ORDER BY NOME");

                                    while (rs.next()) {
                                        out.println("<option value='" + rs.getString("ID") + "'>" +
                                                rs.getString("NOME") + "</option>");
                                    }

                                    conexao.close();
                                %>
                            </select>
                        </td>
                    </tr>
                </table>
                <br/>
                <input type="submit" value="Cadastrar"/>
            </form>
        </div>
    </body>
</html>
