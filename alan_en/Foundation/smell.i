-- "smell.i"

Syntax
  smell0 = smell.

Verb smell0
  Does
    "You smell nothing unusual."
End verb.


Syntax
  smell = smell (obj)
    Where obj IsA thing
      else "You can't smell that!"

Add to every thing
  Verb smell
    Does
      "You smell" say the obj. "."
  End verb.
End add.
