<%@page import="java.sql.Types"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="database.Conexao"%>
<%@page import = "java.sql.Connection,
                  java.sql.ResultSet,
                  java.sql.PreparedStatement"%>
<%
    if (request.getParameter("status") != null) {
        out.println("Usuário e/ou senha incorretos!");
    }
    
    if (request.getParameter("txtUsuario") != null) {
        HttpServletResponse rp = (HttpServletResponse)response;
        
        String usuario = request.getParameter("txtUsuario");
        String senha = request.getParameter("txtSenha");
        
        boolean senhaVazia = (senha.trim().length() == 0);

        if (usuario.trim().length() > 0) {
            try {
                Conexao conexao = new Conexao();
                Connection con = conexao.getConnection();
                PreparedStatement ps = con.prepareStatement(
                        "SELECT * FROM tb_usuario WHERE APELIDO = ? AND SENHA " +
                                (senhaVazia ? "IS NULL" : "= ?"));
                ps.setString(1, usuario);
                if (!senhaVazia) {
                    ps.setString(2, senha);
                }

                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    rp.sendRedirect("menuPrincipal.jsp");
                } else {
                    rp.sendRedirect("index.jsp?status=fail");
                }

                conexao.close();
            } catch (Exception ex) {
                out.println(ex.getMessage());
            }
        } else {
            rp.sendRedirect("index.jsp");
        }
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LocaSystem - Login</title>
        <style type="text/css">
            body {
                font-family: arial;
            }
            span#titulo {
                display: block;
                background-color: darkgreen;
                color: white;
                padding-top: 3px;
                padding-bottom: 3px;
                padding-left: 10px;
                border-top-left-radius: 5px;
                border-top-right-radius: 5px;
            }
            div#login {
                border: 2px solid darkgreen;
                border-radius: 10px;
                position: absolute;
                width: 240px;
            }
            #login table {
                margin: 10px;
            }
            #login td {
                padding-right:10px;
                padding-bottom: 5px;
            }
        </style>
    </head>
    <body>
        <div id="login">
            <form method="get" action="index.jsp">
                <span id="titulo"><b>Login - LocaSystem</b></span>
                <br/><br/>
                <table id="login">
                    <tr>
                        <td>Usuário</td>
                        <td><input type="text" name="txtUsuario"/></td>
                    </tr>
                    <tr>
                        <td>Senha</td>
                        <td><input type="password" name="txtSenha"/></td>
                    </tr>
                    <td colspan="2" style="text-align: center"><input type="submit" value="Entrar" onclick="validarLogin();"/></td>
                </table>
                <br/>
            </form>
        </div>
    </body>
</html>
