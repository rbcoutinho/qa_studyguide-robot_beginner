***Settings***
Library     app.py


***Test Cases***
Deve retornar mensagem de boas vindas
    ${result}=          Welcome         Rafael
    Should Be Equal     ${result}       Olá Rafael, bem vindo ao Robot Beginner!