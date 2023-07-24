let 
    #"Lista de pares" =
                        List.Generate(
                            ()=>10, //valor incial 
                            each _ > 1, //condição 
                            each _ -2 // valor a ser decrementaldo exemplo: 10-8-6-4-2
                        )
in
    #"Lista de pares"