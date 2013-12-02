<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <form action="menuPrincipal.jsp" method="post">
                <span id="titulo"><b>Login - LocaSystem</b></span>
                <br/><br/>
                <table id="login">
                    <tr>
                        <td>Usuário</td>
                        <td><input type="text" name="usuario"/></td>
                    </tr>
                    <tr>
                        <td>Senha</td>
                        <td><input type="text" name="senha"/></td>
                    </tr>
                    <td colspan="2" style="text-align: center"><input type="submit" value="Entrar"/></td>
                </table>
                <br/>
            </form>
        </div>
    </body>
</html>
