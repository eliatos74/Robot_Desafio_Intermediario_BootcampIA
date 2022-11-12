*** Settings ***
Library    SeleniumLibrary

### DATA
Resource    ./data/global.robot
Resource    ./data/dados.robot

### CADASTRO
Resource    ./pages/cadastro_page.robot

### LOGIN
Resource    ./pages/login_page.robot

### CONTAS
Resource    ./pages/contas_page.robot

### MOVIMENTAÇÃO
Resource    ./pages/movimentacao_page.robot

Resource    ./pages/resumo_mensal_page.robot