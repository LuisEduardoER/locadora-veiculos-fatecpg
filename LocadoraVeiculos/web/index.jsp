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
            td.labelLogin {
                padding-right:10px;
            }
        </style>
    </head>
    <body>
        <form action="menuPrincipal.jsp" method="post">
            <table>
                <tr>
                    <td class="labelLogin">Email</td>
                    <td><input type="text" name="email"/></td>
                </tr>
                <tr>
                    <td class="labelLogin">Senha</td>
                    <td><input type="text" name="senha"/></td>
                </tr>
            </table>
            <br/>
            <input type="submit" value="Entrar"/>
        </form>
    </body>
</html>
