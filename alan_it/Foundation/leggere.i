﻿-- "leggere.i" <- read.i

Add to every object
  Is not leggibile.
End add.


Syntax
  leggere = leggi (ogg)
    Where ogg IsA object
      else "Non è possibile leggere $+1." --> @TODO: More explicit message!

Add to every object
  Verb leggere
    Check ogg is not ornamentale else
      If ogg is plurale
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    And ogg is leggibile
      else "Non c'è scritto nulla" say ogg:prep_SU. "$+1."
    Does
      "Leggi $+1."
  End verb.
End add.
