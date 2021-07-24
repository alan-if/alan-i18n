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
  oler = oler el (obj).

Add to every thing
  Verb oler
    Does
      "Hueles" say the obj. "."
  End verb.
End add to.
