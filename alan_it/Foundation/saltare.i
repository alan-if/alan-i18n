-- "saltare.i" <- "jump.i"

Syntax saltare = salta.

Verb saltare
  Does
    "Salti sul posto, senza ottenere nulla."
End verb.


Syntax saltare_su = salta su (ogg)
  Where ogg IsA thing
    else "Non puoi saltare" say ogg:prep_SU. "$+1!"

Add to every thing
  Verb saltare_su
    Does
      "Salti" say ogg:prep_SU. "$+1!"
  End verb.
End add.
