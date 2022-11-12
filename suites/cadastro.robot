*** Settings ***
Resource    ../resources/main.robot

Test Setup       Dado que eu esteja na pagina Inicial
Test Teardown    E Fecha Navegador


*** Test Cases ***

TC01: Cadastrar Usuário Valido
    Dado Que eu Estejha na Pagina de Cadastro
    E Preencho o Campo Nome
    E Preencho o Campo Email
    E Preencho o Campo Senha
    Quando Clico em Cadastrar
    Então Devo Ver a Mensagem Usuário inserido com sucesso

TC02: Cadastrar Usuário Já Cadastrado
    Dado Que eu Estejha na Pagina de Cadastro
    E Preencho o Campo Nome, Email e Senha de Um Usuário ja Cadastrado
    Quando Clico em Cadastrar
    Então Devo Ver a Mensagem Endereço de email já utilizado

TC03: Cadastrar Usuário Sem Nome
    Dado Que eu Estejha na Pagina de Cadastro
    E Preencho o Campo Email
    E Preencho o Campo Senha
    Quando Clico em Cadastrar
    Então Devo Ver a Mensagem Nome é um campo obrigatório

TC04: Cadastrar Usuário Sem Email
    Dado Que eu Estejha na Pagina de Cadastro
    E Preencho o Campo Nome
    E Preencho o Campo Senha
    Quando Clico em Cadastrar
    Então Devo Ver a Mensagem Email é um campo obrigatório

TC05: Cadastrar Usuário Sem Senha
    Dado Que eu Estejha na Pagina de Cadastro
    E Preencho o Campo Nome
    E Preencho o Campo Email
    Quando Clico em Cadastrar
    Então Devo Ver a Mensagem Senha é um campo obrigatório


