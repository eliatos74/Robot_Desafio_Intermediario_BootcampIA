*** Settings ***
Resource    ../resources/main.robot

Test Setup       Dado que eu esteja na pagina Inicial
# Test Teardown    E Fecha Navegador

*** Test Cases ***
TC01: Logar com Usuário Valido Padrão
    Dado Que Eu Esteja Na Pagina de Login
    E Preencho o Email
    E Preencho a Senha
    E Clico Em Entrar
    Então Devo Ver a Mensagem Bem vindo, Elias!

TC02: Logar Sem o Campo Email
    Dado Que Eu Esteja Na Pagina de Login
    E Preencho a Senha
    E Clico Em Entrar
    Então Devo Ver a Mensagem Email é um campo obrigatório

TC03: Logar Sem o Campo Senha
    Dado Que Eu Esteja Na Pagina de Login
    E Preencho o Email
    E Clico Em Entrar
    Então Devo Ver a Mensagem Senha é um campo obrigatório

TC03: Logar Sem o Campo Email e Senha
    Dado Que Eu Esteja Na Pagina de Login
    E Clico Em Entrar
    Então Devo Ver Duas Mensagem Email é um campo obrigatório e Senha é um campo obrigatório