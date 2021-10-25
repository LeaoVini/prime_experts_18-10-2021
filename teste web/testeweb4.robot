***Settings***
Documentation       A automatização deve entrar no endereço http://automationpractice.com/ , clicar em SIGN IN, digitar um e-mail válido na caixa de texto, e preencher as informações necessárias para efetuar o cadastro de novo cliente.

Library             SeleniumLibrary
Suite Setup         Abrir chrome     
Suite Teardown      Fechar chrome


***Variables***
${Link}         http://automationpractice.com/
${sign}         //a[@href='http://automationpractice.com/index.php?controller=my-account']
${txtbox}       //input[contains(@id,'email_create')]
${create}       //button[contains(.,'Create an account')]


***Test Cases***
Teste da Web
    [Tags]      test_browser
        Ir para a página inicial do automationpractice
        Clicar em sign in
        Digitar johndoe321982312@hotmail.com na caixa de pesquisa
        Clicar em criar conta
        Preencher o questionário


***Keywords***
Abrir chrome
    Open Browser    browser=Chrome

Ir para a página inicial do automationpractice
    Go To  ${Link}

Clicar em sign in
    Click Link   ${sign}

Digitar ${email} na caixa de pesquisa
    Wait Until Element Is Visible   ${txtbox}
    Input Text   ${txtbox}   ${email}
    
Clicar em criar conta
    Click Button   ${create}

Preencher o questionário
    Wait Until Element Is Visible   //input[@id='id_gender1']
    Select Radio Button             id_gender      1
    Input Text                      //input[contains(@id,'customer_firstname')]     John
    Input Text                      //input[contains(@id,'customer_lastname')]      Doe
    Input Text                      //input[contains(@data-validate,'isPasswd')]    090807060504030201
    Select From List By Value       //select[contains(@id,'days')]                  3
    Select From List By Value       //select[contains(@id,'months')]                6
    Select From List By Value       //select[contains(@id,'years')]                 1999
    Input Text                      //input[@id='firstname']                        John
    Input Text                      //input[@id='lastname']                         Doe
    Input Text                      //input[contains(@id,'company')]                Prime
    Input Text                      //input[contains(@id,'address1')]               Avenida Paulista, 1300
    Input Text                      //input[contains(@id,'address2')]               Avenida Benedito de Andrade
    Input Text                      //input[contains(@id,'city')]                   West Virginia
    Select From List By Value       //select[contains(@id,'id_state')]              48
    Input Text                      //input[contains(@id,'postcode')]               02936
    Select From List By Value       //select[contains(@id,'id_country')]            21
    Input Text                      //textarea[contains(@id,'other')]               Teste Prime
    Input Text                      //input[@id='phone']                            39990146
    Input Text                      //input[contains(@id,'phone_mobile')]           953528692
    Input Text                      //input[contains(@id,'alias')]                  Praça Yara
    Sleep                                          5                                Revisar Informações
    Click Button                    //*[@id="submitAccount"]

Fechar chrome
    Close Browser