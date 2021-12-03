-- "baciare.i" <- "kiss.i"

Syntax baciare = bacia (ogg)
  Where ogg IsA thing
    else "Non puoi baciarl$$" say ogg:vocale. "$$!"

Add to every thing
  Verb baciare
    Does
      If ogg=hero then
        "Se proprio devi!"
      else
        If ogg is inanimato then
          "Baci" say the ogg. "."
        else
          Say the ogg. "resping$$"
          If ogg is not plurale
            Then "e"
            Else "ono"
          End if.
          "le tue avance."
        End if.
      End if.
  End verb.
End add.
