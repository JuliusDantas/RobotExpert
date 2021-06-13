***Settings***
Documentation           Conhecendo as Listas

Library         Collections

***Variables***
@{AVENGERS}         Ironman     Hulk        Thor        Cap

***Test Cases***
Minhas Listas
    ${Index}                Get Index From List     ${AVENGERS}     Hulk
    Log To Console          ${Index}
    Set List Value          ${AVENGERS}    ${Index}     Thor
    Log To Console          ${AVENGERS} 