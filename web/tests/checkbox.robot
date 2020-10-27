***Settings***
Resource        ../resources/base.robot

Test Setup      Nova sessão 
Test Teardown   Encerra sessão

***Variables***
${check_thor}               id:thor
${check_ironman}            css:input[value='iron-man']
${check_blackpanther}       xpath://*[@id='checkboxes']/input[7]

***Test Cases***
Marcando opção Thor com ID
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${check_thor}
    Checkbox Should Be Selected         ${check_thor}

Marcando opção Iron-Man com CSS Selector
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${check_ironman}
    Checkbox Should Be Selected         ${check_ironman}

Marcando opção Pantera Negra com Xpath
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${check_blackpanther}
    Checkbox Should Be Selected         ${check_blackpanther}