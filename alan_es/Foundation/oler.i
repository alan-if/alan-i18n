-- "oler.i" <-- "smell.i"

Synonyms
  huele, huelo,
  olisqueo, olisquea, olisquear,
  olfateo, olfatea, olfatear = oler.

Syntax
  oler0 = oler.

Verb oler0
  Does
    "No hueles nada insólito."
End verb.


Syntax
  oler = oler (obj)
    Where obj IsA thing
      else "¡No puedes oler eso!"

Add to every thing
  Verb oler
    Check obj is not ornamentale else
      If obj is plural
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    Does
      "Hueles $+1."
  End verb.
End add to.
