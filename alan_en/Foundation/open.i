-- "open.i"

Syntax
  open = open (obj)
    Where obj IsA object
      else "You can't open that."

Add to every object
  Is
    Not openable.
    Not open.

  Verb open
    Check obj is not ornamental else
      If obj is plural
        then say msg:ornamental_response_P1_pl.
        else say msg:ornamental_response_P1_sg.
      End if.
    And obj is openable
      else "You can't open that!"
    And obj is not open
      else "It's already open."
    Does
      Make obj open.
      Say the obj. "is now open."
  End verb.

End add.


Syntax
  open_with = open (obj1) 'with' (obj2)
    Where obj1 IsA object
      else "You can't open that."
    And obj2 IsA object
      else "You can't open anything with that."

Add to every object
  Verb open_with
    When obj1
      Check obj1 is not ornamental else
        If obj1 is plural
          then say msg:ornamental_response_P1_pl.
          else say msg:ornamental_response_P1_sg.
        End if.
      And obj2 is not ornamental else
        If obj2 is plural
          then say msg:ornamental_response_P2_pl.
          else say msg:ornamental_response_P2_sg.
        End if.
      And obj2 in hero
        else say msg:you_dont_have_P2.
      Does
        "You can't open" say the obj1. "with" say the obj2. "."
  End verb.
End add.


Synonyms
  shut = close.

Syntax
  close = close (obj)
    Where obj IsA object
      else "You can only close objects."

Add to every object
  Is not closeable.

  Verb close
    Check obj is not ornamental else
      If obj is plural
        then say msg:ornamental_response_P1_pl.
        else say msg:ornamental_response_P1_sg.
      End if.
    And obj is closeable
      else "You can't close that."
    And obj is open
      else "It is not open."
     Does
       Make obj not open.
       Say the obj. "is now closed."
    End verb.

End add.


Syntax
  close_with = close (obj1) 'with' (obj2)
    Where obj1 IsA object
      else "You can't close that."
    And obj2 IsA object
      else "You can't close anything with that."

Add to every object
  Verb close_with
    When obj1
      Check obj1 is not ornamental else
        If obj1 is plural
          then say msg:ornamental_response_P1_pl.
          else say msg:ornamental_response_P1_sg.
        End if.
      And obj2 is not ornamental else
        If obj2 is plural
          then say msg:ornamental_response_P2_pl.
          else say msg:ornamental_response_P2_sg.
        End if.
      And obj2 in hero
        else say msg:you_dont_have_P2.
      And obj1 is openable
        else "You can't close" say the obj1. "."
      Does -- To be overridden by DOES ONLY where appropriate...
        "You can't close" say the obj1. "with" say the obj2. "."
  End verb.
End add.
