-- "jump.i"

Syntax
  jump_on = jump 'on' (obj)
    Where obj IsA thing
      else "You can't jump on that!"

Add to every thing
  Verb jump_on
    Check obj is not scenery else
      If obj is plural
        then say msg:scenery_response_P1_pl.
        else say msg:scenery_response_P1_sg.
      End if.
    Does
      "You jump on" say the obj. "."
  End verb.
End add.


Syntax
  jump = jump.

Verb jump
  Does
    "You jump up and down."
End verb.
