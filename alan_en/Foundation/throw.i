﻿-- "throw.i"

Synonyms
  dump, cast = throw.

Syntax
  throw = throw (obj)*
    Where obj IsA object
      else "You can only throw objects."

Add to every object
  Verb throw
    Check obj is not scenery else
      If obj is plural
        then say msg:scenery_response_P1_pl.
        else say msg:scenery_response_P1_sg.
      End if.
    And obj in hero
      else "You haven't got that!"
    Does
      "You can't throw very far,"
      say the obj. "ends up on the ground."
      Locate obj here.
      -- In case item was being worn:
      Set wearer of obj to nobody.
      Make obj not worn.
  End verb.
End add.


Syntax
  throw_at = throw (obj1) 'at' (obj2)
    Where obj1 IsA object
      else "You can only throw objects."
    And obj2 IsA thing
      else "You can't throw anything at that."

  throw_to = throw (obj1) 'to' (obj2)
    Where obj1 IsA object
      else "You can't be serious."
    And obj2 IsA thing
      else "You can't throw anything to that."

Add to every object
  Verb throw_at, throw_to
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
      And obj1 in hero
        else "You haven't got that!"
      And obj2 not in hero
        else
          "You are carrying" say the obj2. "."
      And obj2 <> hero
        else
          "You can't throw" say the obj1.
          "at yourself."
      Does
        Say the obj1. "bounces harmlessly off"
        say the obj2. "and ends up on the ground."
        Locate obj1 here.
        -- In case item was being worn:
        Set wearer of obj1 to nobody.
        Make obj1 not worn.
  End verb.
End add.


Syntax
  throw_in = throw (obj1) 'in' (obj2)
    Where obj1 IsA object
      else "Don't be silly."
    And obj2 IsA container
      else "You can't throw anything in that."

Add to every object
  Verb throw_in
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
      And obj1 in hero
        else "You haven't got that!"
      And obj1 <> obj2
        else "Now, that would be a good trick!"
      And obj2 <> hero
        else
          "You can't put" say the obj1. "into yourself!"
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
