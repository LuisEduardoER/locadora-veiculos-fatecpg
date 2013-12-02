<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LocaSystem - Cadastro de Pessoa</title>
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
                <li><a href="cadastroPessoa.jsp">Cadastro de Pessoa</a></li>
                <li><a href="cadastroModelo.jsp">Cadastro de Modelo</a></li>
                <li><a href="cadastroCor.jsp">Cadastro de Cor</a></li>
            </ul>
        </div>
        <div id="conteudo">
            <form action="" method="post">
                <span id="titulo">Cadastro de Pessoa</span>
                <br/><br/>
                <table id="cadastro">
                    <tr>
                        <td>Nome Completo</td>
                        <td colspan="6"><input type="text" name="nome" size="60"/></td>
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
        </div>
    </body>
</html>
