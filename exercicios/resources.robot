*** Settings ***
Library     Collections


*** Variables ***
&{Pessoa}       Nome=Vinícius     Sobrenome=Leão       Idade=22     Sexo=Masculino        Cidade=SP     Nascimento=03-06-1999     Profissão=Estudante

*** Test Cases ***
Impressão de dicionário linha por linha    
    [Tags]              smoke_tests
    [Documentation]       O teste deve receber uma variável do tipo dicionário e imprimir os seus valores linha por linha
    #Imprimir Dicionário     ${Dicionário}
    #Log to Console      Imprimir o Dicionário pessoa: ${Pessoa}
    Log to Console      Pegando somente o Nome: ${Pessoa.Nome}
    Log to Console      Pegando somente o Sobrenome: ${Pessoa.Sobrenome}
    Log to Console      Pegando somente a Idade: ${Pessoa.Idade}
    Log to Console      Pegando somente o Sexo: ${Pessoa.Sexo}
    Log to Console      Pegando somente a Cidade: ${Pessoa.Cidade}
    Log to Console      Pegando somente o Nascimento: ${Pessoa.Nascimento}
    Log to Console      Pegando somente a Profissão: ${Pessoa.Profissão}
 

*** Keywords ***
Imprimir Dicionário
    [Arguments]         ${Dicionário}
 