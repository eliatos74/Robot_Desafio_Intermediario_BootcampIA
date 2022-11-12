*** Settings ***
Resource    ../main.robot
Library    String

*** Variables ***
&{VAR_MOVIMENTACAO}
...    TIPO_MOVIMENTACAO=id:tipo
...    DATA_TRANSACAO=id:data_transacao
...    DATA_PAGAMENTO=id:data_pagamento
...    DESCRICAO=id:descricao
...    INTERESSADO=id:interessado
...    VALOR=id:valor
...    CONTA=id:conta
...    BOTAO_SALVAR=//button[@class='btn btn-primary']


# MEDIO impacto de ocorrer bugs, dado que o usuario digite todos os dados e de forma correta, não ha risco de ocorrer bugs.
*** Keywords ***
Dado Que Eu Esteja Na Pagina de Criar Movimentação
    Go To                        ${GERAL.URL_PRINCIPAL}/movimentacao
E Seleciono o Tipo Da Movimentação ${TIPO}
    Select From List By Label    ${VAR_MOVIMENTACAO.TIPO_MOVIMENTACAO}    ${TIPO}
E Preencho a Data da Movimentação
    Input Text                   ${VAR_MOVIMENTACAO.DATA_TRANSACAO}       ${DADOS_MOVIMENTACAO.DATA_MOVIM}
E Preencho a Data do Pagamento
    Input Text                   ${VAR_MOVIMENTACAO.DATA_PAGAMENTO}       ${DADOS_MOVIMENTACAO.DATA_PAGAM}
E Preencho a Descrição
    Input Text                   ${VAR_MOVIMENTACAO.DESCRICAO}            ${DADOS_MOVIMENTACAO.DESCRICAO}
E Preencho o campo de Interessado
    Input Text                   ${VAR_MOVIMENTACAO.INTERESSADO}          ${DADOS_MOVIMENTACAO.INTERESSADO}
E Preencho o campo Valor
    Input Text                   ${VAR_MOVIMENTACAO.VALOR}                ${DADOS_MOVIMENTACAO.VALOR}
Quando Seleciono Uma Das Contas: ${CONTA}
    Select From List By Label    ${VAR_MOVIMENTACAO.CONTA}                ${CONTA}
E Marco a Situação Do Tipo Que é ${STATUS}
    ${ESCOLHA}                   Convert To Lower Case                    ${STATUS}
    Click Element                //input[@id='status_${ESCOLHA}']           
E Clico Em Salvar Movimentação
    Click Element                ${VAR_MOVIMENTACAO.BOTAO_SALVAR}