﻿-- "bussare.i" <- "knock.i"

Syntax bussare = bussa a (ogg)
  Where ogg IsA object
    else "Non è possibile bussare" say ogg:prep_A. "$1!" --> @TODO: More explicit message!

Add to every thing
  Verb bussare
    Check ogg is not ornamentale else
      If ogg is plurale
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    Does
      "Bussi" SAY ogg:prep_A. say the ogg. "ma non succedde nulla."
  End verb.
End add.

Syntax bussare0 = bussa.

Verb bussare0
  Does
    "Per bussare a qualcosa, usa BUSSA A OGGETTO."
End verb.
