***Settings***
Resource        ../resources/base.robot

Test Setup      Nova sessão 
Test Teardown   Encerra sessão

***Variables***
${category}             movies
${select_cap}           cap
${select_guardians}     guardians

***Test Cases***
Selecionando Capitão América por ID
    Go To                               ${url}/radios
    Select Radio Button                 ${category}                          ${select_cap}
    Radio Button Should Be Set To       ${category}                          ${select_cap}

Selecionando Guardiões da Galáxia por Value
    Go To                               ${url}/radios
    Select Radio Button                 ${category}                          ${select_guardians}
    Radio Button Should Be Set To       ${category}                          ${select_guardians}
