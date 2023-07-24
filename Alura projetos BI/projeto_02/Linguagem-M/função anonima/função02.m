let
     Lista = {1 .. 10},
     pares = List.Select(
          Lista,                           // lista com os valores de 1 a 10
          each Number.Mod( _ ,2) = 0     // Retorna o resto da divisão de cada item da lista por 2 e seleciona quem resulta em zero
          )   
in
     pares