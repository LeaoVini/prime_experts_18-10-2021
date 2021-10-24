*** Settings ***
Library     Collections


*** Variables ***
${email_foundation}       @robot.com


*** Test Cases ***
Criação de email
    [Tags]          meu_email
    [Documentation]     Criação de e-mail com os valores das variáveis e keywords fornecidas
    ${retorno}    inicio email      vinicius    leao    22
    Log To Console  \n${retorno}n\


*** Keywords ***
inicio email
    [Arguments]     ${nome}     ${sobrenome}      ${idade}
    ${complete_email}       Catenate  ${nome}${sobrenome}${idade}${email_foundation}
    [Return]    ${complete_email}