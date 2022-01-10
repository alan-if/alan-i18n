-- "listen.i"

Syntax
  listen_to = listen 'to' (obj)
    Where obj IsA thing
      else "You can't listen to that!"

Add to every thing
  Verb listen_to
    Check obj is not ornamental else
      If obj is plural
        then say msg:ornamental_response_P1_pl.
        else say msg:ornamental_response_P1_sg.
      End if.
    Does
      "You listen to" say the obj. "."
  End verb.
End add.


Syntax
  listen = listen.

Verb listen
  Does
    "You hear nothing unusual."
End verb.
