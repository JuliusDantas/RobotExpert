***Settings***
Documentation           Laços de repetição (Loops)


***Variables***
@{AVENGERS}         Ironman     Hulk        Thor        Cap
@{JUSTICE}          Superman    Wonder Woman     Batman      Arrow


***Test Cases***
Meu Primeiro Loops

    FOR        ${item}     IN      @{AVENGERS}
        IF      $item != 'Ironman'
            Log To Console      Obtendo o vingador: ${item}
        END
    END

Outro Loop
    [tags]      thor
    FOR        ${item}     IN      @{AVENGERS}
        Exit For Loop If  $item == 'Thor'
        Log To Console      Obtendo o vingador: ${item}
        
    END
