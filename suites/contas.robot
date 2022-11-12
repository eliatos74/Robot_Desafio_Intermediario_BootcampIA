*** Settings ***
Resource    ../resources/main.robot

Test Setup       Dado Que Eu Esteja Logado
Test Teardown    E Fecha Navegador


*** Test Cases ***
TC01: Criar Conta
    Dado Que Eu Clique Em Adicionar Conta
    E Digito o Nome da Conta Conta 1
    E Clico Em Salvar
    Então Devo Ver a Mensagem Conta adicionada com sucesso!

TC02: Listar Contas
    Dado Que Eu Clique Em Listar Contas
    Então Devo Ver Uma Lista De Contas

TC03: Editar Conta
    Dado Que Eu Esteja Na Pagina De contas
    E Clico Em Editar a Conta Com o Nome Conta 1
    E Escrevo o Novo Nome Da Conta Conta 1 Editada
    E Clico Em Salvar
    Então Devo Ver a Mensagem Conta alterada com sucesso!

TC04: Excluir Conta
    Dado Que Eu Esteja Na Pagina De contas
    E Clico Em Excluir Uma Conta Com o Nome Conta 1 Editada
    Então Devo Ver a Mensagem Conta removida com sucesso!
   
