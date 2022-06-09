*** Settings ***
Library         SeleniumLibrary


*** Variable ***
${BROWSER}      Chrome 
${URL}          https://www.icmc.usp.br/pessoas/docentes


*** Keywords ***
Inicio do Teste
    Open Browser        about:blanc      ${BROWSER}     options=add_experimental_option('excludeSwitches', ['enable-logging'])
    Maximize Browser Window
    
Final do Teste
    Close Browser