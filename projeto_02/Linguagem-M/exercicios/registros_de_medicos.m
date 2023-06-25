let
    CRM = {123, 456, 789},
    Médicos = {"Dr. David", "Dra. Maria", "Dra. Beatriz"},
    Email = {"david@email.com", "maria@email.com", "beatriz@email.com"},
    #"Lista dos Médicos" = {CRM, Médicos, Email}
in
    // dentro da linguagem M
    // usamos #"para nome da variavel" = "string para ser armavenada na variavel"

    // #"Lista de  Médico" é uma varivel

    #"Lista dos Médicos"{1}{1} 

//    resultado da consulta é Dra.Maria