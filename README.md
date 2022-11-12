# **Robot Desafio Intermediario Bootcamp IA** 🚀


### 🔗[Link do Projeto no Repósitorio Github](https://github.com/eliatos74/Robot_Desafio_Intermediario_BootcampIA)
<br />

### 💻Nesse projeto forão criado ao todo 17 casos de teste, mais apenas os 8 principais serão descritas abaixo.

- Logar com Usuário Valido Padrão
- Cadastrar Usuário Valido
- Criar Conta
- Editar Conta
- Excluir Conta
- Criar Movimentacão do Tipo Rceita e Pago
- Criar Movimentacão do Tipo Despesa e Pendente
- Excluir Movimentação

### **Configuração de Ambiente**

Para rodar os teste precisaremos ter instalados:

- [vs code] - Programa para rodar os testes
- [python] - Python
- [robot framework] - Framework
<br/>

----

## **Execução dos Testes**

Com o projeto aberto dentro do vscode abra o terminal dentro da pasta principal
<br/>
<br/>

### **Executando teste de cadastro.robot**


Cadastrar Usuário Valido
```sh
robot -d cadastro.robot -t "TC01: Cadastrar Usuário Valido" suites
```
<br/>

### **Executando teste de login.robot**


Logar com Usuário Valido Padrão
```sh
robot -d cadastro.robot -t "TC01: Logar com Usuário Valido Padrão" suites
```
<br/>

### **Executando testes de conta.robot**
Criar Conta, Editar Conta, Excluir Conta

⚠️ Como são tres caso de teste, cada um deles recebeu a tag : **[Tags]  conta** para rodas todos em sequência.
```sh
robot -d cadastro.robot -i conta  suites
```

<br/>

### **Executando testes de movimentacao.robot**
Criar Movimentacão do Tipo Rceita e Pago, Criar Movimentacão do Tipo Despesa e Pendente

```sh
robot -d results suites/movimentacao.robot
```

<br/>

### **Executando testes de resumo_mensal.robot**
Excluir Movimentação

```sh
robot -d results -t "TC01: Excluir Movimentação" suites
```

<br/>

### **Executando Todos os Casos de Teste**
Excluir Movimentação

```sh
robot -d results suites
```
---
<br/>

⚠️Pode acontecer de alguns testes falharem por conta da FakeLibrary onde gera nomes com alguns acentos que não é permitido para a criação de email ja que uso o nome gerado para a contrução do Email

### *ex:*
```python
   variavel nome recebe => ${NOME} = Otávio Nunes
   
   Criação do Email => ${NOME}@teste.com
```
Acontece um erro pois a biblioteca gera um nome com acento que não é permitido pelo campo Email.

[//]: # 
   [vs code]: <https://code.visualstudio.com/>
   [robot framework]: <https://robotframework.org//>
   [python]: <https://www.python.org//>

