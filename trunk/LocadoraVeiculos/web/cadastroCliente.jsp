<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="database.Conexao"%>
<%@page import = "java.sql.Connection,
                  java.sql.ResultSet,
                  java.sql.Statement"%>
<%
    if (request.getParameter("txtNome") != null) {
        String nome = request.getParameter("txtNome");
        String email = request.getParameter("txtEmail");
        String cpf = request.getParameter("txtCpf");
        String cep = request.getParameter("txtCep");
        String endereco = request.getParameter("txtEndereco");
        String telefone = request.getParameter("txtTelefone");
        String celular = request.getParameter("txtCelular");
        if (nome.trim().length() > 0 && email.trim().length() > 0 && cpf.trim().length() > 0) {
            try {
                Conexao conexao = new Conexao();
                Connection con = conexao.getConnection();
                Statement stmt = con.createStatement();
                int res = stmt.executeUpdate(
                        "INSERT INTO tb_cliente " +
                        " (NOME, CPF_CNPJ, EMAIL, TELEFONE, CELULAR, ENDERECO, CEP) " +
                        " VALUES " +
                        " ('" + nome + "', '" + cpf + "', '" + email + "', '" + telefone + "'," +
                        " '" + celular + "', '" + endereco + "', '" + cep + "')");

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
        <title>LocaSystem - Cadastro de Cliente</title>
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
            <form method="get" action="cadastroCliente.jsp">
                <span id="titulo">Cadastro de Cliente</span>
                <br/><br/>
                <table id="cadastro">
                    <tr>
                        <td>Nome</td>
                        <td colspan="6"><input type="text" name="txtNome" size="60"/></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td colspan><input type="text" name="txtEmail"/></td>
                    </tr>
                    <tr>
                        <td>CPF / CNPJ</td>
                        <td><input type="text" name="txtCpf" maxlength="20"/></td>
                    </tr>
                    <tr>
                        <td>CEP</td>
                        <td><input type="text" name="txtCep" maxlength="8"/></td>
                    </tr>
                    <tr>
                        <td>Endereço</td>
                        <td><input type="text" name="txtEndereco"/></td>
                    </tr>
                    <tr>
                        <td>Telefone</td>
                        <td><input type="text" name="txtTelefone"/></td>
                    </tr>
                    <tr>
                        <td>Celular</td>
                        <td><input type="text" name="txtCelular"/></td>
                    </tr>
                </table>
                <br/>
                <input type="submit" value="Cadastrar"/>
            </form>
        </div>
    </body>
</html>
