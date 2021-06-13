***Settings***
Documentation           Exemplo de Variáveis
Library                 app/nome.py

***Variables***
${apelido}          Teste Nome

***Test Cases***
Exemplo 01
    ${nome}             Set Variable    ${apelido}
    ${nome2}            Obter Nome
    Set Suite Variable  ${nome}
    Log To Console      ${nome}
    Log To Console      ${nome2}
    Log To Console      ${apelido}

Exemplo 02
    Log To Console      ${nome}
    Log To Console      ${apelido}
    