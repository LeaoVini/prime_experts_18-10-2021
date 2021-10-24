***Settings***
Library     Collections
Documentation   O teste tem intuito de imprimir números específicos entre x e y


***Test Cases***
Impressão de números específicos entre um valor setado
    [Tags]      impr_nums
    sem_criatividade

***Keywords***
sem_criatividade
    FOR     ${num}    IN RANGE    20  50
        IF     ${num} == 28
            Log To Console  \nNúmero: ${num}
        ELSE IF  ${num} == 40
            Log To Console  \nNúmero: ${num}
        END
    END