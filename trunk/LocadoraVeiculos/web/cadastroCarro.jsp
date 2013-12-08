<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="database.Conexao"%>
<%@page import = "java.sql.Connection,
        java.sql.ResultSet,
        java.sql.Statement"%>
<%
    if (request.getParameter("cbxModelo") != null) {
        String modeloId = request.getParameter("cbxModelo");
        String corId = request.getParameter("cbxCor");
        String placa = request.getParameter("txtPlaca");
        String chassi = request.getParameter("txtChassi");
        String descricao = request.getParameter("txtDescricao");
        String diaria = request.getParameter("txtDiaria");
        if (modeloId.trim().length() > 0 && placa.trim().length() > 0) {
            if (corId.trim().length() == 0) {
                corId = "NULL";
            }
            try {
                Conexao conexao = new Conexao();
                Connection con = conexao.getConnection();
                Statement stmt = con.createStatement();
                int res = stmt.executeUpdate(
                        "INSERT INTO tb_carro "
                        + " (CORID, MODELOID, PLACA, CHASSI, DESCRICAO, DISPONIVEL,DIARIA) "
                        + " VALUES "
                        + " (" + corId + ", " + modeloId + ", '" + placa + "', '" + chassi + "'"
                        + ", '" + descricao + "', 1,"+diaria+")");

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
            <span id="titulo">Cadastro de Carro</span>
            <br/><br/>
            <form method="get" action="cadastroCarro.jsp">
                <table id="cadastro">
                    <tr>
                        <td>Modelo</td>
                        <td>
                            <select name="cbxModelo" style="width: 200px">
                                <option selected="selected"></option>
                                <%
                                    Conexao conexao = new Conexao();
                                    Connection con = conexao.getConnection();
                                    Statement st = con.createStatement();
                                    ResultSet rs = st.executeQuery(
                                            "SELECT ID, NOME FROM tb_modelo ORDER BY NOME");

                                    while (rs.next()) {
                                        out.println("<option value='" + rs.getString("ID") + "'>"
                                                + rs.getString("NOME") + "</option>");
                                    }

                                    conexao.close();
                                %>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Cor</td>
                        <td>
                            <select name="cbxCor" style="width: 200px">
                                <option selected="selected"></option>
                                <%
                                    conexao = new Conexao();
                                    con = conexao.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery(
                                            "SELECT ID, NOME FROM tb_cor ORDER BY NOME");

                                    while (rs.next()) {
                                        out.println("<option value='" + rs.getString("ID") + "'>"
                                                + rs.getString("NOME") + "</option>");
                                    }

                                    conexao.close();
                                %>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Placa</td>
                        <td><input class="upper" type="text" name="txtPlaca" size="12" maxlength="7"/></td>
                    </tr>
                    <tr>
                        <td>Chassi</td>
                        <td><input class="upper" type="text" name="txtChassi" maxlength="50"/></td>
                    </tr>
                    <tr>
                        <td>Descrição</td>
                        <td><textarea style="resize: none;" rows="4" cols="50" name="txtDescricao" maxlength=8000"></textarea></td>
                    </tr>
                    <tr>
                        <td>Valor Diária</td>
                        <td><input type="text" name="txtDiaria" maxlength="4"></td>
                    </tr>
                </table>
                <br/>
                <input type="submit" value="Cadastrar"/>
            </form>
        </div>
    </body>
</html>
