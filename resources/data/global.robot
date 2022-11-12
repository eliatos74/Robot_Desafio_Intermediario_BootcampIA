*** Settings ***
Resource    ../main.robot

*** Variables ***
&{GERAL}
...    URL_PRINCIPAL=https://seubarriga.wcaquino.me
...    NAVEGADOR=Chrome

*** Keywords ***
Dado que eu esteja na pagina Inicial
    Open Browser    ${GERAL.URL_PRINCIPAL}           ${GERAL.NAVEGADOR}

E Fecha Navegador
    Close Browser

Dado Que Eu Esteja Logado
    Open Browser     ${GERAL.URL_PRINCIPAL}          ${GERAL.NAVEGADOR}
    Go To            ${GERAL.URL_PRINCIPAL}/login
    Input Text       ${LOGIN.INPUT_EMAIL}            ${DADOS_USUARIO.EMAIL}    
    Input Text       ${LOGIN.INPUT_SENHA}            ${DADOS_USUARIO.SENHA}
    Click Element    ${LOGIN.BUTTON_ENTRAR}

Então Devo Ver a Mensagem ${MENSAGEM}
    Page Should Contain    ${MENSAGEM}