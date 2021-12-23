-- "touch.i"

Add to every thing
  Is touchable.
End add.


Syntax
  touch = touch (obj)
    Where obj IsA thing
      else "You can't touch that."

  touch_with = touch (obj1) 'with' (obj2)
    Where obj1 IsA thing
      else "You can't touch that."
    And obj2 IsA object
      else "You can only use objects to touch with."

Add to every object
  Verb touch
    Check obj is not scenery else
      If obj is plural
        then say msg:scenery_response_P1_pl.
        else say msg:scenery_response_P1_sg.
      End if.
    And obj is touchable
      else "You can't touch that."
    Does
      "You touch" say the obj. "."
  End verb.

  Verb touch_with
    When obj1
      Check obj1 is not scenery else
        If obj1 is plural
          then say msg:scenery_response_P1_pl.
          else say msg:scenery_response_P1_sg.
        End if.
      And obj2 is not scenery else
        If obj2 is plural
          then say msg:scenery_response_P2_pl.
          else say msg:scenery_response_P2_sg.
        End if.
      And obj1 is touchable
        else "You can't touch that."
      And obj1 <> obj2
        else "It doesn't make sense to touch something with itself."
      Does
        "You touch" say the obj1. "with" say the obj2. "."
  End verb.
End add.
