-- "annusare.i" <- "smell.i"

Syntax annusare0 = annusa.

Verb annusare0
  Does
    "Non senti alcun odore particolare." -- preso da i6.
End verb.


Syntax annusare = annusa (ogg)
  Where ogg IsA thing
    else "Non è possibile annusare $+1!"

Add to every thing
  Verb annusare
    Does
      "Annusi $+1."
  End verb.
End add.
