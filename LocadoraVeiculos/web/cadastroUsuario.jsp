<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="database.Conexao"%>
<%@page import = "java.sql.Connection,
                  java.sql.ResultSet,
                  java.sql.Statement"%>
<%
    if (request.getParameter("txtNome") != null) {
        String nome = request.getParameter("txtNome");
        String email = request.getParameter("txtEmail");
        String usuario = request.getParameter("txtUsuario");
        String senha = request.getParameter("txtSenha");
        String senha2 = request.getParameter("txtConfirmarSenha");
        
        if (senha != senha2) {
            out.println("As senhas não coincidem!");
            return;
        }
        
        if (nome.trim().length() > 0 && email.trim().length() > 0 && usuario.trim().length() > 0
                && senha.trim().length() > 0) {
            try {
                Conexao conexao = new Conexao();
                Connection con = conexao.getConnection();
                Statement stmt = con.createStatement();
                int res = stmt.executeUpdate(
                        "INSERT INTO tb_usuario " +
                        " (NOME, APELIDO, EMAIL, SENHA) " +
                        " VALUES " +
                        " ('" + nome + "', '" + usuario + "', '" + email + "', '" + senha + "')");

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
        <title>LocaSystem - Cadastro de Usuário</title>
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
            <form action="" method="post">
                <span id="titulo">Cadastro de Usuário</span>
                <br/><br/>
                <table id="cadastro">
                    <tr>
                        <td>Nome</td>
                        <td colspan="6"><input type="text" name="txtNome" size="60"/></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="txtEmail"/></td>
                    </tr>
                    <tr>
                        <td>Apelido</td>
                        <td><input type="text" name="txtUsuario"/></td>
                    </tr>
                    <tr>
                        <td>Senha</td>
                        <td><input type="text" name="txtSenha"/></td>
                    </tr>
                    <tr>
                        <td>Confirmar Senha</td>
                        <td><input type="text" name="txtConfirmarSenha"/></td>
                    </tr>
                </table>
                <br/>
                <input type="submit" value="Cadastrar"/>
            </form>
        </div>
    </body>
</html>
