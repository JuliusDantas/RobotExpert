***Settings***
Documentation       Trabalhando com Condicionais

***Variables***
${select_browser}           Firefox
${select_age}               18

***Test Cases***
Carteira de Motoristas
    [tags]      carteira
    ${idade}=           Set Variable       ${select_age}

    IF      ${idade}>=18
        Log To Console          Você pode tirar sua CNH
    ELSE
        Log To Console          Você pode andar de bicicleta
    END

Navegador
    [tags]      browser

    ${browser}=         Set Variable        ${select_browser}

    IF              '${browser}' == 'Firefox'
            Log To Console          Chamando o ${browser}
    ELSE IF         '${browser}' == 'Chrome'
            Log To Console          Chamando o ${browser}
    ELSE IF         '${browser}' == 'WebKit'
            Log To Console          Chamando o ${browser}
    ELSE       
            Fail          Navegador incorreto
    END