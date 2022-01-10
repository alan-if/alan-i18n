-- "take.i"

Add to every thing
  Is inanimate.
End add.

Add to every object
  Is takeable.
End add.

Add to every actor
  Is not inanimate.
End add.


Synonyms
  get, carry, obtain, grab, steal, confiscate, hold = take.


Syntax
  take = take (obj)*
    Where obj IsA object
      else "You can't take that with you!"


Syntax
  pick_up1 = pick up (obj)*
    Where obj IsA object
      else "You can't take that with you!"

  pick_up2 = pick (obj)* up
    Where obj IsA object
      else "You can't take that with you!"

Add to every object
  Verb take, pick_up1, pick_up2
    Check obj is not ornamental else
      If obj is plural
        then say msg:ornamental_response_P1_pl.
        else say msg:ornamental_response_P1_sg.
      End if.
    And obj is takeable
      else "You can't take that!"
    And obj not in hero
      else "You've already got that."
            If obj is worn then
              "You're wearing"
              If obj is not plural
                then "it."
                else "them."
              End if.
            End if.
    And weight Of obj <=50
      else "That is too heavy to lift."
    Does
      Locate obj in hero.
      -- In case item was being worn:
      Set wearer of obj to nobody.
      Make obj not worn.
      "Taken."
  End verb.
End add.


Synonyms
  discard = drop.

Syntax
  drop = drop (obj)*.

Syntax
  put_down1 = put (obj)* down.

Syntax
  put_down2 = put down (obj)*.

Add to every object
  Verb drop, put_down1, put_down2
    Check obj is not ornamental else
      If obj is plural
        then say msg:ornamental_response_P1_pl.
        else say msg:ornamental_response_P1_sg.
      End if.
    And obj in hero
      else "You aren't carrying that."
    Does
      Locate obj here.
      -- In case item was being worn:
      Set wearer of obj to nobody.
      Make obj not worn.
      "Dropped."
  End verb.
End add.


Syntax
  take_from = 'take' (obj) 'from' (holder)
    Where obj IsA object
      else "You can only take objects."
    And holder IsA thing
      else "You can't take things from that!"
    And holder IsA container
      else "You can't take things from that!"

Add to every object
  Verb take_from
    When obj
      Check obj is not ornamental else
        If obj is plural
          then say msg:ornamental_response_P1_pl.
          else say msg:ornamental_response_P1_sg.
        End if.
      And holder is not ornamental else
        If holder is plural
          then say msg:ornamental_response_P2_pl.
          else say msg:ornamental_response_P2_sg.
        End if.
      And obj not in hero
        else "You already have" say the obj. "."
      And obj in holder
        else Say the obj. "is not there."
      Does
        If holder=hero then
          "You don't need to take things from yourself!"
        else
          Locate obj in hero.
          -- In case item was being worn:
          Set wearer of obj to nobody.
          Make obj not worn.
          "You take" say the obj. "."
        End if.
  End verb.
End add.
