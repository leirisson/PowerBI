(temperaturas as number) =>
let
    mensagem=
                if temperaturas > 37 then "Quente"
                else if temperaturas <= 0 then "Frio"
                else "Ameno"

in

mensagem