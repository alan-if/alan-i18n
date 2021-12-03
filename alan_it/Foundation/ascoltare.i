-- "ascoltare.i" <- "listen.i"

Syntax ascoltare0 = ascolta.

Verb ascoltare0
  Does
    "Non odi niente di particolare."
End verb.


Syntax ascoltare = ascolta (ogg)
  Where ogg IsA thing
    else "Non puoi ascoltare $+1!"

Add to every thing
  Verb ascoltare
    Does
      "Ascolti $+1."
  End verb.
End add.
