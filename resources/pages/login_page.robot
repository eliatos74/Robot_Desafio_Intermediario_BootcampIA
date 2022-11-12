*** Settings ***
Resource    ../main.robot

*** Variables ***
&{LOGIN}
...    A_TELA_LOGIN=//a[@href="/login"]
...    INPUT_EMAIL=id=email
...    INPUT_SENHA=id=senha
...    BUTTON_ENTRAR=//button[@type="submit"]
...    DIV_MENSAGEM_LOGIN_SUCESSO=//*[contains(text(), 'Bem vindo,')]
...    DIV_MENSAGEM_SENHA_OBRIGATORIA=//*[contains(text(), 'Senha é um campo obrigatório')]
...    DIV_MENSAGEM_EMAIL_OBRIGATORIA=//*[contains(text(), 'Email é um campo obrigatório')]

*** Keywords ***
Dado Que Eu Esteja Na Pagina de Login
    Click Element          ${LOGIN.A_TELA_LOGIN} 
E Preencho o Email
    Input Text             ${LOGIN.INPUT_EMAIL}    ${DADOS_USUARIO.EMAIL}   
E Preencho a Senha
    Input Text             ${LOGIN.INPUT_SENHA}    ${DADOS_USUARIO.SENHA}    
E Clico Em Entrar
    Click Element          ${LOGIN.BUTTON_ENTRAR}
Então Devo Ver Duas Mensagem ${MENSAGEM_01} e ${MENSAGEM_02}
    Page Should Contain    ${MENSAGEM_01}
    Page Should Contain    ${MENSAGEM_02}