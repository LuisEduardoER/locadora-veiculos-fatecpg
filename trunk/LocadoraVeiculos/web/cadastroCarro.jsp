<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LocaSystem - Cadastro de Carro</title>
        <style>
            body {
                font-family: arial;
            }
        </style>
    </head>
    <body>
        <form action="" method="post">
            <table>
                <tr>
                    <td>Modelo</td>
                    <td><input type="text" name="modelo" size="50"/></td>
                </tr>
                <tr>
                    <td>Marca</td>
                    <td>
                        <select name="marca">
                            <option selected="selected"></option>
                            <option>Chevrolet</option>
                            <option>Fiat</option>
                            <option>Ford</option>
                            <option>Jac</option>
                            <option>Honda</option>
                            <option>Mitsubishi</option>
                            <option>Nissan</option>
                            <option>Peugeot</option>
                            <option>Renault</option>
                            <option>Toyota</option>
                            <option>Volkswagen</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Ano</td>
                    <td>
                        <select name="ano" value="2014">
                            <option selected="selected"></option>
                            <%for (int i = 1990; i <= 2014; i++) {%>
                            <option><%=i%></option>
                            <%}%>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Placa</td>
                    <td><input type="text" name="placa" size="12"/></td>
                </tr>
            </table>
            <br/>
            <input type="submit" value="Cadastrar"/>
        </form>
    </body>
</html>
