-- "put.i"

Synonyms
  place = put.

Syntax
  put = put (obj)*
    Where obj IsA object
      else "You can't put that anywhere."

Add to every object
  Verb put
    Check obj is not ornamental else
      If obj is plural
        then say msg:ornamental_response_P1_pl.
        else say msg:ornamental_response_P1_sg.
      End if.
    And obj in hero
      else "You haven't got that."
    Does
      Locate obj here.
      -- In case item was being worn:
      Set wearer of obj to nobody.
      Make obj not worn.
      "Dropped."
  End verb.
End add.


Syntax
  put_in = put (obj1) 'in' (obj2)
    Where obj1 IsA object
      else "You can't put that anywhere."
    And obj2 IsA container
      else "You can't put anything in that."

Add to every object
  Verb put_in
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
      And obj1 in hero
        else
          "You haven't got" say the obj1. "."
      And obj1 <> obj2
        else "You can't put something into itself!"
      And obj2 <> hero
        else "You can't put" say obj1. "into yourself!"
      Does
        Locate obj1 in obj2.
        -- Check that operation succeeded
        -- (could fail due to TAKING clause):
        If obj1 directly in obj2 then
          -- In case item was being worn:
          Set wearer of obj1 to nobody.
          Make obj1 not worn.
          "Done."
        End if.
    End verb.
End add.


Syntax
  put_near = put (obj1) 'near' (obj2)
    Where obj1 IsA object
      else "You can't put that anywhere."
    And obj2 IsA thing
      else "You can't put anything near that."

  put_behind = put (obj1) behind (obj2)
    Where obj1 IsA object
      else "You can't put that anywhere."
    And obj2 IsA thing
      else "You can't put anything behind that."

  put_on = put (obj1) 'on' (obj2)
    Where obj1 IsA object
      else "You can't put that anywhere."
    And obj2 IsA thing
      else "You can't put anything on that."

  put_under = put (obj1) under (obj2)
    Where obj1 IsA object
      else "You can't put that anywhere."
    And obj2 IsA thing
      else "You can't put anything under that."

Add to every object
  Verb put_near, put_behind, put_on, put_under
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
      And obj1 in hero
        else "You haven't got" say the obj1. "."
      And obj2 not in hero
        else
          "You are carrying" say the obj2.
          ". If you want to take" say the obj1. "just say so."
      Does
        "Naaah. I'd rather just put" say the obj1. "down here."
        Locate obj1 at obj2.
        -- In case item was being worn:
        Set wearer of obj1 to nobody.
        Make obj1 not worn.
  End verb.
End add.
