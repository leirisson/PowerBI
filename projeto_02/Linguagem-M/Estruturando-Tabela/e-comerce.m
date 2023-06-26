let
       #"Conexão com a api" = // conectando com  a api
            (numeroDePagina) => // função para deixar dinamico a numeração das paginas
                    Json.Document( 
                        Web.Contents("http://localhost:8080",
                        [
                            RelativePath = "/medicos",
                            Query = [
                                page = Number.ToText(numeroDePagina) //"1"//Number.ToText(numero_da_pagina) // convertendo para texto (OBS) o numero da pagina precisa ser em texto
                            ]
                        ])
                    )[content],

        #"Total de paginas" = 
                    Json.Document( 
                        Web.Contents("http://localhost:8080",
                        [
                            RelativePath = "/medicos",
                            Query = [
                                page = "1"
                            ]
                        ])
                    )[totalPages],
        #"Lista de paginas" = {0 .. #"Total de paginas" -1 },

        #"Lista de todos os dados" = List.Transform(
                            #"Lista de paginas",
                            each {_, #"Conexão com a api"(_)} // para cada item da lista
        ),
        #"Table" =
        Table.TransformColumns( 
            Table.ExpandRecordColumn(// expanção do registro da coluna -> Dados
                Table.ExpandListColumn( // expandido a lista da coluna -> Dados 
                                    #table( // ------- tabela estruturada
                                        type table
                                        [Paginas = text, Dados=list], // registro da tabela
                                        #"Lista de todos os dados"
                                    ),"Dados" // coluna que foi expandida
                                ),
                                "Dados", {"id","nome", "email", "crm", "especialidade"},
                                        {"ID", "NOME", "E-MAIL", "CRM", "ESPECIALIDADE"} //renomeando ->  FORMATO QUE VAI SER EXIBIDO

            ),
            {
                "NOME",
                each Text.FromBinary(Text.ToBinary(_, 1252), TextEncoding.Utf8)
            }
    ) // fim do  Table.TransformColumns
in
   #"Table"