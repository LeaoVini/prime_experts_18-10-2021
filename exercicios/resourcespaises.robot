***Settings***
Library     Collections
Documentation     O meu teste deve imprimir a lista de países

***Variables***
@{Lista_Paises}  Finlândia    Suécia    Angola     Suíça     Noruega


***Test Cases***
Impressão dos Países
    [Tags]      paises_log
    imprima_ou_sucumba


***Keywords***
imprima_ou_sucumba
    FOR     ${cntry}    IN  @{Lista_Paises}
        Log To Console      \nFiz tour pela: ${cntry}
    END