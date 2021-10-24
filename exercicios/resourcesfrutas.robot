*** Settings ***
Library     Collections
Documentation     Impressão linha por linha da lista de frutas

*** Variables ***
@{Lista_De_Frutas}     Morango     Jaca        Banana      Kiwi        Maracujá

*** Test Cases ***
Impressão da lista de frutas linha por linha
    [Tags]              fruta_test
    
        Log To Console     Imprimir a lista de frutas: ${Lista_De_Frutas}
        Log To Console     Primeira Fruta: ${Lista_De_Frutas}[0]
        Log To Console     Segunda Fruta: ${Lista_De_Frutas}[1]
        Log To Console     Terceira Fruta: ${Lista_De_Frutas}[2]
        Log To Console     Quarta Fruta: ${Lista_De_Frutas}[3]
        Log To Console     Quinta Fruta: ${Lista_De_Frutas}[4]