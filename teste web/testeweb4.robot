***Settings***
Library             SeleniumLibrary
Suite Setup         Abrir chrome     
Suite Teardown      Fechar chrome


***Variables***
${Link}     http://automationpractice.com/

${sign}         //a[@href='http://automationpractice.com/index.php?controller=my-account']
${txtbox}       //input[contains(@id,'email_create')]
${create}       //button[contains(.,'Create an account')]

***Test Cases***
Teste da Web
    [Tags]      test_browser
        Ir para a página inicial do automationpractice
        Clicar em sign in
        Digitar johndoe32193812@hotmail.com na caixa de pesquisa
        Clicar em criar conta
        Preencher o questionário







***Keywords***
Abrir chrome
    Open browser    browser=Chrome

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
    
    
Fechar chrome
    Close browser