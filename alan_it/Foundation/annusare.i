-- "annusare.i" -> smell.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Syntax
  annusare0 = annusa.

Verb annusare0
  Does
 -- "You smell nothing unusual."
    "Non senti alcun odore particolare." -- preso da i6.
End verb.


Syntax
  annusare = annusa (ogg)
    Where ogg IsA thing
      else "You can't smell that!" -- @TRANSLATE

Add to every thing
  Verb annusare
    Does
      "Annusi" say the ogg. "."
  End verb.
End add.
