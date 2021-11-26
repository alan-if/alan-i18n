-- "leggere.i" -> read.i

Add to every object
  Is not leggibile.
End add.


Syntax
  leggere = leggi (ogg)
    Where ogg IsA object
      else "You can't read that." -- @TRANSLATE

Add to every object
  Verb leggere
    Check ogg is leggibile
      else "Non c'è scritto nulla" say ogg:prep_SU. say the ogg. "."
    Does
      "Leggi" say the ogg. "."
  End verb.
End add.
