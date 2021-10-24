*** Settings ***

[Documentation]     Importação de resources
Resource  ./exercicios/resourcesfrutas.robot

*** Test Cases ***
Impressão da lista de frutas linha por linha
    [Tags]              fruta_test
    [Documentation]     Impressão linha por linha da lista de frutas
    Recebo e imprimo a lista      ${Lista_De_Frutas}