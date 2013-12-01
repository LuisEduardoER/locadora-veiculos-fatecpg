<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LocaSystem - Cadastro de Pessoa</title>
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
                    <td>Nome Completo</td>
                    <td><input type="text" name="nome"/></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email"/></td>
                </tr>
                <tr>
                    <td>Senha</td>
                    <td><input type="text" name="senha"/></td>
                </tr>
                <tr>
                    <td>Confirmar Senha</td>
                    <td><input type="text" name="confirmarSenha"/></td>
                </tr>
                <tr>
                    <td>Data de Nascimento</td>
                    <td><input type="text" name="dataNascimento"/></td>
                </tr>
                <tr>
                    <td>Sexo</td>
                    <td colspan="2">
                        <input type="radio" name="sexo" value="masculino"/>Masculino
                        <input type="radio" name="sexo" value="feminino"/>Feminino
                    </td>
                </tr>
                <tr>
                    <td>CPF</td>
                    <td><input type="text" name="cpf" maxlength="8"/></td>
                </tr>
                <tr>
                    <td>CEP</td>
                    <td><input type="text" name="cep" maxlength="11"/></td>
                </tr>
                <tr>
                    <td>Rua</td>
                    <td><input type="text" name="rua"/></td>
                    <td>Número</td>
                    <td><input type="text" name="numero"/></td>
                    <td>Complemento</td>
                    <td><input type="text" name="complemento"/></td>
                </tr>
                <tr>
                    <td>Telefone</td>
                    <td><input type="text" name="telefone"/></td>
                </tr>
                <tr>
                    <td>Celular</td>
                    <td><input type="text" name="celular"/></td>
                </tr>
            </table>
            <br/>
            <input type="submit" value="Cadastrar"/>
        </form>
    </body>
</html>
