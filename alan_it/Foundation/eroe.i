-- "eroe.i" <- "hero.i"

Synonyms
  me = hero.

The hero IsA actor
  Container
    Limits
      Count 10 then
        "Hai raggiunto il limite di oggetti trasportabili.
         Dovresti prima lasciare qualcosa."
      peso 50 then
        -- @TODO: Sepcifica limite peso max.
        "Hai raggiunto il limite di peso trasportabile.
         Dovresti prima lasciare qualcosa."
    Header
      "Stai trasportando"
    else
      "Sei a mani vuote."
End the.
