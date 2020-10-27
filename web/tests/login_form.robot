***Settings***
Resource        ../resources/base.robot

Test Setup      Nova sessão 
Test Teardown   Encerra sessão

***Test Cases***
Login com sucesso utilizando seletor CSS
    Go To                               ${url}/login
    Input Text                          css:input[name=username]                    stark
    Input Text                          css:input[name=password]                    jarvis!
    Click Element                       class:btn-login
    
    Page Should Contain                 Olá, Tony Stark. Você acessou a área logada!

Login com sucesso utilizando ID
    Go To                               ${url}/login
    Input Text                          id:userId                    stark
    Input Text                          id:passId                    jarvis!
    Click Element                       class:btn-login
    
    Page Should Contain                 Olá, Tony Stark. Você acessou a área logada!

Senha inválida
    Go To                               ${url}/login
    Input Text                          id:userId                    stark
    Input Text                          id:passId                    jarvis
    Click Element                       class:btn-login
    
    Page Should Contain                 Senha é invalida!

Usuário inválido
    Go To                               ${url}/login
    Input Text                          id:userId                    star
    Input Text                          id:passId                    jarvis!
    Click Element                       class:btn-login
    
    Page Should Contain                 O usuário informado não está cadastrado!

Usuário e senha em branco
    Go To                               ${url}/login
    Input Text                          id:userId                    ${EMPTY}
    Input Text                          id:passId                    ${EMPTY}
    Click Element                       class:btn-login
    
    Page Should Contain                 O usuário informado não está cadastrado!