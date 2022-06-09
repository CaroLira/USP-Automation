*** Settings *****
Resource            ../Resources/PageObject/Docentes.robot
Resource            ../Resources/Resources.robot 
Suite Setup         Inicio do Teste
Suite Teardown      Final do Teste

*** Test Cases ***
Cenario 1: numero de professores no departamento de CC
    Dado que estou na base de professores
    Quando pesquiso pelos docentes de ciencia de computacao
    Entao numero de professores e exibido