***Settings***
Resource        ../resources/base.robot

Test Setup      Nova sessão 
Test Teardown   Encerra sessão

***Test Cases***
Selecionando Scott Lang por Texto e validar pelo Valor
    Go To                               ${url}/dropdown
    Select From List By Label           class:avenger-list                  Scott Lang
    ${selected}=                        Get Selected List Value             class:avenger-list
    Should Be Equal                     ${selected}                         7

Selecionando Tony Stark pelo Valor e valida pelo Texto
    Go To                               ${url}/dropdown
    Select From List By Value           id=dropdown                         3
    ${selected}=                        Get Selected List Label             id:dropdown
    Should Be Equal                     ${selected}                         Tony Stark           