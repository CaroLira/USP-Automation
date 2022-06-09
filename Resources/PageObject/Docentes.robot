*** Settings ***
Library         SeleniumLibrary
Library         ScreenCapLibrary

*** Variable ***
${BROWSER}                  Chrome 
${URL}                      https://www.icmc.usp.br/pessoas/docentes
${Departamentos}            css=span.Cestsgl > select
${Ciencia_Comp}             xpath=/html/body/div[3]/div[1]/div[2]/div[3]/form/span[1]/select/option[2]
${Docentes}                 class=thumbnail

*** Keywords ***
Dado que estou na base de professores
    Go To                               ${URL}

Quando pesquiso pelos docentes de ciencia de computacao
    Click Element                       ${Departamentos}
    Click Element                       ${Ciencia_Comp}
    Sleep                               5

Entao numero de professores e exibido
    ${cnt}=    Get Element Count        ${Docentes}
    Should Be True	                    ${cnt}     
    Log To Console                      ${cnt}
