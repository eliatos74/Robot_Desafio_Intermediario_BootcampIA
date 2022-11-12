*** Settings ***
Resource    ../main.robot
Library    Collections

*** Variables ***
&{RESUMO}
...    lISTA_MES=id:mes
...    lISTA_ANO=id:ano
...    BOTAO_BUSCAR=//input[@class='btn btn-primary']
...    PENDENTE=//td[.='Pendente']
...    PAGO=//span[.='Pago']
...    GUARDAR_MES=''
...    GUARDAR_ANO=''
...    GUARDAR_CONTA=''


*** Keywords ***

# LISTAR RESUMOS
# BAIXO impacto de ocorrer bugs, passando o mes e ano referente ao de criação aparece atraves do filtro corretamente
Dado Que Eu Esteja Na Pagina de Resumo Mensal
    Go To    ${GERAL.URL_PRINCIPAL}/extrato
E Seleciono o Mes ${MES}
    Select From List By Label    ${RESUMO.lISTA_MES}    ${MES}
    ${RESUMO.GUARDAR_MES}=    Get Selected List Value    ${RESUMO.lISTA_MES}  
E Seleciono o Ano ${ANO}
    Select From List By Label    ${RESUMO.lISTA_ANO}    ${ANO}
    ${RESUMO.GUARDAR_ANO}=    Get Selected List Value    ${RESUMO.lISTA_ANO}
Quando Clico Em Buscar
    Click Element    ${RESUMO.BOTAO_BUSCAR}
Então Deve Ver As Movimentações Do Mes Pesquisado
    Page Should Contain Element    //tbody//td[contains(text(), "${RESUMO.GUARDAR_MES}/${RESUMO.GUARDAR_ANO}")]
    

# EXCLUIR RESUMOS
# MEDIO impacto de ocorrer bugs, caso não passe o mês e ano corretamente aparecerá um erro que não é possivel clicar no elemento da keyword : "Quando Clico em Excluir"
E informo o Mês ${MES}
    E Seleciono o Mes ${MES}   
E informo o Ano de ${ANO}
    E Seleciono o Ano ${ANO}
E informo o Nome Da ${CONTA}
    ${RESUMO.GUARDAR_CONTA}=    Set Variable    ${CONTA}   
Quando Clico em Excluir
    Click Element    //tbody//td[contains(text(), "${RESUMO.GUARDAR_MES}/${RESUMO.GUARDAR_ANO}")]//..//td[contains(text(), "${RESUMO.GUARDAR_CONTA}")]//..//a[contains(@href, "removerMovimentacao")]
 