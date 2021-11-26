-- "ascoltare.i" -> listen.i

Syntax
  ascoltare0 = ascolta.

Verb ascoltare0
  Does
    "Non odi niente di particolare."

End verb.

Syntax
  ascoltare = ascolta (ogg)
    Where ogg IsA thing
      else "You can't listen to that!" -- @TRANSLATE

Add to every thing
  Verb ascoltare
    Does
      "Ascolti" say the ogg. "."
  End verb.
End add.

