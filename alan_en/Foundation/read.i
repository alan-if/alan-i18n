-- "read.i"

Add to every object
  Is not readable.
End add.


Syntax
  read = read (obj)
    Where obj IsA object
      else "You can't read that."

Add to every object
  Verb read
    Check obj is not ornamental else
      If obj is plural
        then say msg:ornamental_response_P1_pl.
        else say msg:ornamental_response_P1_sg.
      End if.
    And obj is readable
      else "There is nothing written on" say the obj. "."
    Does
      "You read" say the obj. "."
  End verb.
End add.
