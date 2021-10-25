*** Settings ***
Library             SeleniumLibrary
Suite Setup         Abrir chrome     
Suite Teardown      Fechar chrome


***Variables***
${Link}     http://automationpractice.com/

${lupa}     //button[@name="submit_search"]
${caixa}    //input[@id="search_query_top"]
${blusa}    //a[@class="product-name" and @title="Blouse"]

***Test Cases***
Teste da Web
    [Tags]      test_browser
        Ir para a página inicial do automationpractice
        Digitar Blouse na caixa de pesquisa
        Clicar no botão de pesquisar o produto
        Esperar o produto se tornar visível


***Keywords***
Abrir chrome
    Open browser    browser=Chrome

Ir para a página inicial do automationpractice
    Go To  ${Link}

Digitar ${clths} na caixa de pesquisa
    Wait Until Element Is Visible   ${caixa}
    Input Text  ${caixa}    ${clths}

Clicar no botão de pesquisar o produto
    Click Button    ${lupa}

Esperar o produto se tornar visível
    Wait Until Element Is Visible   ${blusa}

Fechar chrome
    Close browser