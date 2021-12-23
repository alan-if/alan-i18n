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
    Check obj is not scenery else
      If obj is plural
        then say msg:scenery_response_P1_pl.
        else say msg:scenery_response_P1_sg.
      End if.
    Does
      "You smell" say the obj. "."
  End verb.
End add.
