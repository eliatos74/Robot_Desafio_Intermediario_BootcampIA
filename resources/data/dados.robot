*** Settings ***
Resource    ../main.robot

*** Variables ***

# Dados para massa de teste 

&{DADOS_USUARIO}
...    NOME=elias
...    EMAIL=eli4tos74@teste.com
...    SENHA=12345

&{DADOS_MOVIMENTACAO}
...    DATA_MOVIM=05/11/2022
...    DATA_PAGAM=05/11/2022      
...    DESCRICAO=Meu Pagamento
...    INTERESSADO=Elias
...    VALOR=2575