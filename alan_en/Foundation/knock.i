-- "knock.i"

Syntax
  knock_on = knock 'on' (obj)
    Where obj IsA thing
      else "You can't knock on that!"

Add to every thing
  Verb knock_on
    Check obj is not ornamental else
      If obj is plural
        then say msg:ornamental_response_P1_pl.
        else say msg:ornamental_response_P1_sg.
      End if.
    Does
      "You knock on" say the obj. "."
  End verb.
End add.


Syntax
  knock = knock.

Verb knock
  Does
    "You need to specify what you want to knock on."
End verb.
