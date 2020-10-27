***Settings***
Resource        ../resources/base.robot

Test Setup      Nova sessão 
Test Teardown   Encerra sessão

***Test Cases***
Verificar o valor ao informar o número da linha
    Go To                               ${url}/tables
    Table Row Should Contain            id:actors                   1               $ 10.000.000
    Table Row Should Contain            id:actors                   2               @vindiesel

Descobre a linha pelo texto chave e valida os demais valores
    Go To                               ${url}/tables
    ${target}=                          Get WebElement                      xpath:.//tr[contains(., '@prattprattpratt')]
    Log                                 ${target.text}
    Should Contain                      ${target.text}                      Chris Pratt
    Should Contain                      ${target.text}                      Senhor das Estrelas
    Should Contain                      ${target.text}                      Vingadores
    Should Contain                      ${target.text}                      $ 10.000.000
    Should Contain                      ${target.text}                      @prattprattpratt