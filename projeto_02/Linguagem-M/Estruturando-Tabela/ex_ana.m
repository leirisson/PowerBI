#table(
    type table[
        Data = date,
        Despeza = text, 
        valor = number
    ],
    {
        {
            #date(2023,06,24), "Luz", 250.00
        },
        {
            #date(2023,06,05),"Agua", 150.00
        },
        {
            #date(2023,06,09), "internet", 99.99
        }
    }
)