-- "eroe.i" --> "hero.i"

Synonyms
  me = hero.

The hero IsA actor
  Container
    Limits
      Count 10 then
        -- @TODO: Sepcifica limite oggetti max.
        "Non puoi trasportare più nulla.
         Dovresti prima lasciare qualcosa."
      peso 50 then
        -- @TODO: Sepcifica limite peso max.
        "Non puoi trasportare più nulla.
         Dovresti prima lasciare qualcosa."
    Header
      "Stai trasportando"
    else
      "Sei a mani vuote."
End the.
