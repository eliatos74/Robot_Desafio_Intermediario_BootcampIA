*** Settings ***
Resource    ../main.robot

*** Variables ***
&{CONTA}
...    A_TELA_CONTA=//*[contains(text(), "Contas ")]
...    A_TELA_ADDCONTA=//a[@href="/addConta"]
...    INPUT_NOME=id:nome
...    BUTTON_SALVAR=//button[@type="submit"]
...    A_TELA_LISTARCONTA=//a[.='Listar']
...    TH_CONTA=//th[.='Conta']
...    TH_ACOES=//th[.='Ações']


*** Keywords ***

#EM COMUN
E Clico Em Salvar
    Click Element    ${CONTA.BUTTON_SALVAR}
Dado Que Eu Esteja Na Pagina De contas
    Dado Que Eu Clique Em Listar Contas

#CRIAR CONTA
Dado Que Eu Clique Em Adicionar Conta
    Click Element    ${CONTA.A_TELA_CONTA}
    Press Key        ${CONTA.A_TELA_CONTA}        ARROW_DOWN
    Click Element    ${CONTA.A_TELA_ADDCONTA}
E Digito o Nome da Conta ${conta_informada}
    Input Text       ${CONTA.INPUT_NOME}    ${conta_informada}

#LISTAR CONTA
Dado Que Eu Clique Em Listar Contas
    Click Element    ${CONTA.A_TELA_CONTA}
    Press Key        ${CONTA.A_TELA_CONTA}        ARROW_DOWN
    Press Key        ${CONTA.A_TELA_CONTA}        ARROW_DOWN
    Click Element    ${CONTA.A_TELA_LISTARCONTA}
Então Devo Ver Uma Lista De Contas
    Element Should Be Visible    ${CONTA.TH_CONTA}
    Element Should Be Visible    ${CONTA.TH_ACOES}


#EDITAR CONTA
E Clico Em Editar a Conta Com o Nome ${conta_informada} 
    Click Element         //td[text()='${conta_informada}']//..//a[contains(@href, "editarConta")]
E Escrevo o Novo Nome Da Conta ${conta_informada} 
    Clear Element Text    ${CONTA.INPUT_NOME}
    Input Text            ${CONTA.INPUT_NOME}    ${conta_informada} 

#EXCLUIR CONTA   
E Clico Em Excluir Uma Conta Com o Nome ${conta_informada}
    Click Element        //td[text()="${conta_informada}"]//..//a[contains(@href, "removerConta")]

