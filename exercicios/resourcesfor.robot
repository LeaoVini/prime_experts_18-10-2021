***Settings***
Library     Collections
Documentation     O teste deve imprimir uma sequência de números específicos


***Test Cases***
Contador do 1 ao 15
    [Tags]      impressao_x_y
    Contador do 1 ao 16


***Keywords***
Contador do ${começo} ao ${fim}
    FOR     ${num}     IN RANGE    ${começo}    ${fim}
        Log To Console  \nNumber: ${num}
    END