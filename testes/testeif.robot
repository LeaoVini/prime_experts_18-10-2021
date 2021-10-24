***Settings***
Library     Collections
Documentation   O teste tem intuito de imprimir números específicos entre x e y


***Test Cases***
Impressão de números específicos entre um valor setado
    [Tags]      impr_nums
    sem_criatividade

***Keywords***
sem_criatividade
    FOR     ${num1}  ${num2}    IN RANGE    20  50
        IF     ${num1} == 28
            Log To Console  \nNúmero: ${num1}
        ELSE IF  ${num2} == 40
            Log To Console  \nNúmero 2: ${num2}
        END
    END