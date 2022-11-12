*** Settings ***
Resource    ../resources/main.robot

Test Setup       Dado Que Eu Esteja Logado
Test Teardown    E Fecha Navegador


*** Test Cases ***

TC01: Pesquisar Movimentações
    Dado Que Eu Esteja Na Pagina de Resumo Mensal
    E Seleciono o Mes Novembro
    E Seleciono o Ano 2022
    Quando Clico Em Buscar
    Então Deve Ver As Movimentações Do Mes Pesquisado

TC01: Excluir Movimentação
    Dado Que Eu Esteja Na Pagina de Resumo Mensal
    E informo o Mês Novembro
    E informo o Ano de 2022
    E informo o Nome Da Conta 2
    Quando Clico em Excluir
    Então Devo Ver a Mensagem Movimentação removida com sucesso!
