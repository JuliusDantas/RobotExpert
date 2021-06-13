***Settings***
Documentation           Conhecendo os Dicionários do Robot (Serve para criar massa de testes)

***Variables***
#${SIMPLE}           José    Maria
#@{CARROS}           Chevette     Opala   Camaro  Mustang
&{CARRO}            nome=Chevette   hp=1500     portas=2      cor=marrom

***Test Cases***
Obtendo valores de um dicionario
    Log To Console      ${CARRO.nome}