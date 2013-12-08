<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="database.Conexao"%>
<%@page import = "java.sql.Connection,
                  java.sql.ResultSet,
                  java.sql.Statement"%>
<%
    if (request.getParameter("cbxCarro") != null) {
        String carroId = request.getParameter("cbxCarro");
        String clienteId = request.getParameter("cbxCliente");
        if (carroId.trim().length() > 0 && clienteId.trim().length() > 0) {
            try {
                Conexao conexao = new Conexao();
                Connection con = conexao.getConnection();
                Statement stmt = con.createStatement();
                int res = stmt.executeUpdate(
                        "INSERT INTO locacao " +
                        " (CARROID, CLIENTEID, DATA_INICIO, DATA_ENTREGA) " +
                        " VALUES " +
                        " (" + carroId + ", " + clienteId + ", NULL, NULL)");

                if (res == 1) {
                    out.println("Locação efetuada com sucesso!");
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
                <li><a href="cadastroUsuario.jsp">Cadastro de Usuário</a></li>
                <li><a href="cadastroCliente.jsp">Cadastro de Cliente</a></li>
                <li><a href="cadastroModelo.jsp">Cadastro de Modelo</a></li>
                <li><a href="cadastroMarca.jsp">Cadastro de Marca</a></li>
                <li><a href="cadastroCor.jsp">Cadastro de Cor</a></li>
            </ul>
        </div>
        <div id="conteudo">
            <span id="titulo">Efetuar Locação</span>
            <br/><br/>
            <form action="" method="post">
                <table id="cadastro">
                    <tr>
                        <td>Cliente</td>
                        <td>
                            <select style="width: 200px">
                                <option selected="selected" name="cbxCliente"></option>
                                <%
                                    Conexao conexao = new Conexao();
                                    Connection con = conexao.getConnection();
                                    Statement st = con.createStatement();
                                    ResultSet rs = st.executeQuery(
                                            "SELECT ID, NOME " +
                                            " FROM tb_cliente " +
                                            " ORDER BY NOME");

                                    while (rs.next()) {
                                        out.println("<option value='" + rs.getString("ID") + "'>" +
                                                rs.getString("NOME") + "</option>");
                                    }

                                    conexao.close();
                                %>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Carro</td>
                        <td>
                            <select style="width: 200px" name="cbxCarro">
                                <option selected="selected"></option>
                                <%
                                    conexao = new Conexao();
                                    con = conexao.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery(
                                            "SELECT C.ID, CONCAT(M.NOME, ' ', C.PLACA) CARRO " +
                                            " FROM tb_carro C " +
                                            " INNER JOIN tb_modelo M ON (M.ID = C.MODELOID) " +
                                            " ORDER BY M.NOME");

                                    while (rs.next()) {
                                        out.println("<option value='" + rs.getString("ID") + "'>" +
                                                rs.getString("CARRO") + "</option>");
                                    }

                                    conexao.close();
                                %>
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
