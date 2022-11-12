*** Settings ***
Resource    ../resources/main.robot

Test Setup       Dado Que Eu Esteja Logado
Test Teardown    E Fecha Navegador


*** Test Cases ***

TC01: Criar Movimentacão do Tipo Rceita e Pago
    Dado Que Eu Esteja Na Pagina de Criar Movimentação
    E Seleciono o Tipo Da Movimentação Receita
    E Preencho a Data da Movimentação
    E Preencho a Data do Pagamento
    E Preencho a Descrição
    E Preencho o campo de Interessado
    E Preencho o campo Valor
    Quando Seleciono Uma Das Contas: Conta 2
    E Marco a Situação Do Tipo Que é Pago
    E Clico Em Salvar Movimentação
    Então Devo Ver a Mensagem Movimentação adicionada com sucesso!

TC02: Criar Movimentacão do Tipo Despesa e Pendente
    Dado Que Eu Esteja Na Pagina de Criar Movimentação
    E Seleciono o Tipo Da Movimentação Despesa
    E Preencho a Data da Movimentação
    E Preencho a Data do Pagamento
    E Preencho a Descrição
    E Preencho o campo de Interessado
    E Preencho o campo Valor
    Quando Seleciono Uma Das Contas: Conta 3
    E Marco a Situação Do Tipo Que é Pendente
    E Clico Em Salvar Movimentação
    Então Devo Ver a Mensagem Movimentação adicionada com sucesso!
