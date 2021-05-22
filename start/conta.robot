***Settings***
Documentation       Suite para testar a classe ContaLibrary

Library             app/ContaLibrary.py

***Variables***


***Test Cases***
Quando abra uma nova conta deve retornar saldo ZERADO
    Abrir Conta
    ${saldo_final}      Obter Saldo
    ${saldo_esperado}   Convert To Number       0.0

    #Log                 ${saldo_final}

    Should Be Equal     ${saldo_final}      ${saldo_esperado}

Quando faco um deposito deve refletir o valor no meu saldo
    Abrir Conta

    ${valor_deposito}       Convert To Number       100
    Deposita                ${valor_deposito}

    ${saldo_final}          Obter Saldo

    Should Be Equal         ${saldo_final}      ${valor_deposito}
    #Should Not Be Equal         ${saldo_final}      ${valor_deposito}+10

Quando faço um saque deve deduzir o valor do meu saldo
    Abrir Conta

    ${valor_deposito}       Convert To Number       100
    Deposita                ${valor_deposito}

    ${valor_saque}          Convert To Number       20
    Saca                    ${valor_saque}

    ${saldo_esperado}       Evaluate            ${valor_deposito} - ${valor_saque}
    ${saldo_final}          Obter Saldo
    
    Should Be Equal         ${saldo_final}      ${saldo_esperado}