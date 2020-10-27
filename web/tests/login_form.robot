***Settings***
Resource        ../resources/base.robot

Test Setup      Nova sessão 
Test Teardown   Encerra sessão

***Test Cases***
Login com sucesso utilizando seletor CSS
    Go To                               ${url}/login
    Login With CSS                      stark                       jarvis!
    
    Should See Logged User              Tony Stark

Login com sucesso utilizando ID
    Go To                               ${url}/login
    Login With ID                       stark                       jarvis!
    
    Should See Logged User              Tony Stark

Senha inválida
    Go To                               ${url}/login
    Login With ID                       stark                        jarvis
    
    Page Should Contain                 Senha é invalida!

Senha inválida validando pelo alert
    Go To                               ${url}/login
    Login With ID                       stark                        jarvis
    
    Should Contain Login alert          Senha é invalida!

Usuário inválido
    Go To                               ${url}/login
    Login With ID                       star                         jarvis!
    
    Page Should Contain                 O usuário informado não está cadastrado!

Usuário inválido validando pelo alert
    Go To                               ${url}/login
    Login With ID                       star                         jarvis!
    
    Should Contain Login alert          O usuário informado não está cadastrado!

Usuário e senha em branco
    Go To                               ${url}/login
    Login With ID                       ${EMPTY}                     ${EMPTY}
    
    Page Should Contain                 O usuário informado não está cadastrado!

Usuário e senha em branco validando pelo alert
    Go To                               ${url}/login
    Login With ID                       ${EMPTY}                     ${EMPTY}
    
    Should Contain Login alert          O usuário informado não está cadastrado!

***Keywords***
Login With CSS
    [Arguments]     ${uname}       ${pass}

    Input Text                          css:input[name=username]                    ${uname}
    Input Text                          css:input[name=password]                    ${pass}
    Click Element                       class:btn-login

Login With ID
    [Arguments]     ${usname}       ${passw}

    Input Text                          css:input[name=username]                    ${usname}
    Input Text                          css:input[name=password]                    ${passw}
    Click Element                       class:btn-login

Should Contain Login alert
    [Arguments]     ${expect_message}
    
    ${message}=                         Get WebElement               id:flash
    Should Contain                      ${message.text}              ${expect_message}

Should See Logged User
    [Arguments]     ${full_name}

    Page Should Contain                 Olá, ${full_name}. Você acessou a área logada!
