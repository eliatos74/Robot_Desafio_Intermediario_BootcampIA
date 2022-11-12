*** Settings ***
Resource        ../main.robot
Library         FakerLibrary    locale=pt_BR

*** Variables ***
&{CADASTRO}
...    A_TELA_CADASTRO=//a[@href="/cadastro"]
...    INPUT_NOME=id=nome
...    INPUT_EMAIL=id=email
...    INPUT_SENHA=id=senha
...    INPUT_BTN_CADASTRAR=//input[@type="submit"]
...    DIV_MENSAGEM_SUCESSO=//*[contains(text(), "Usuário inserido com sucesso")]
...    EMAILFAKE=teste
...    DOMINIO=@teste.com

*** Keywords ***

#CADASTRO NO USUARIO
Dado Que eu Estejha na Pagina de Cadastro
    Click Element            ${CADASTRO.A_TELA_CADASTRO} 
E Preencho o Campo Nome
    ${NOMEFAKE}               FakerLibrary.name
    Input Text                ${CADASTRO.INPUT_NOME}        ${NOMEFAKE}
    ${CADASTRO.EMAILFAKE}     Evaluate                      '${NOMEFAKE}'.replace(' ','_')
E Preencho o Campo Email
    Input Text                ${CADASTRO.INPUT_EMAIL}       ${CADASTRO.EMAILFAKE}${CADASTRO.DOMINIO}
E Preencho o Campo Senha
    ${PASSWORDFAKE}           FakerLibrary.Password
    Input Text                ${CADASTRO.INPUT_SENHA}       ${PASSWORDFAKE}
Quando Clico em Cadastrar
    Click Element             ${CADASTRO.INPUT_BTN_CADASTRAR}


#USUARIO JA CADASTRADO
E Preencho o Campo Nome, Email e Senha de Um Usuário ja Cadastrado
    Input Text    ${CADASTRO.INPUT_NOME}     ${DADOS_USUARIO.NOME}    
    Input Text    ${CADASTRO.INPUT_EMAIL}    ${DADOS_USUARIO.EMAIL}  
    Input Text    ${CADASTRO.INPUT_SENHA}    ${DADOS_USUARIO.SENHA}    