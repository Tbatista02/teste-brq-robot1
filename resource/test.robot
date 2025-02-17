*** Settings ***
Resource  api_testing_user.resource


*** Test Cases ***
Cenário 01: Cadastrar novo usuario na ServerRest
    Criar novo usuario
    Cadastrar novo usuario criado na ServerRest
     Conferir usuario cadastrado corretamente

Cenário 02: Erro ao cadastrar novo usuario na ServerRest
    Criar novo usuario
    Cadastrar novo usuario criado com erro na ServerRest
    Então a chamada deverá retornar 400
Cenário 03: Fazer Login na ServerRest
    Buscar dados para Login 
    Login test com email na ServerRest 
