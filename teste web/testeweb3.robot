***Settings***
Library             SeleniumLibrary
Suite Setup         Abrir chrome     
Suite Teardown      Fechar chrome


***Variables***
${Link}     http://automationpractice.com/

${hover}        //a[contains(@title,'Women')]
${summer}       //a[@href='http://automationpractice.com/index.php?id_category=11&controller=category'][contains(.,'Summer Dresses')]
${dress}        //a[@class='product-name'][contains(.,'Printed Summer Dress')]

***Test Cases***
Teste da Web
    [Tags]      test_browser
        Ir para a página inicial do automationpractice
        Passar o mouse por cima da aba women
        Clicar no botão de vestidos
        Esperar o produto se tornar visível


***Keywords***
Abrir chrome
    Open browser    browser=Chrome

Ir para a página inicial do automationpractice
    Go To  ${Link}

Passar o mouse por cima da aba women
    Mouse Over   ${hover}

Clicar no botão de vestidos
    Click Link    ${summer}

Esperar o produto se tornar visível
    SeleniumLibrary.Wait Until Element Is Visible   ${dress}

Fechar chrome
    Close browser