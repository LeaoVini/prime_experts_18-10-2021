*** Settings ***
[Documentation]     Importação de resources
Resource    ./exercicios/resources.robot

*** Test Cases ***
Impressão de dicionário linha por linha    
    [Tags]              smoke_tests
    [Documentation]     O teste deve receber uma variável do tipo dicionário e imprimir os seus valores linha por linha
    Imprimir Dicionário     &{Pessoa}