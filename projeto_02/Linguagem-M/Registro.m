let
    // ao adcionar um par de [] sinaliza para aliguagem que estarei
    // trabalhando com resgistros
    //
    Registro =[Nome = "Leirisson souza", iade = 24],
    #"Lista de registros" = {[Nome= "Maria Raimunda", idade = 50], [Nome ="Francisco Raiumundo", idade = 60]} 

in

    #"Lista de registros"