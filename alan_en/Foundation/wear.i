-- "wear.i"


Add to every object
  Is not wearable.
     not worn.
  Has wearer nobody. -- dummy actor = unworn state. (see people.i)
End add.


Syntax
  wear = wear (obj)
    Where obj IsA object
      else "You can't wear that."
  wear = put (obj) 'on'.
  wear = put 'on' (obj).

Add to every object
  Verb wear
    Check obj is wearable
      else "You can't wear" say the obj. "."
    And wearer of obj <> hero
      else "You are already wearing" say the obj. "."
--  And obj is not worn
--    else say the wearer of this. "is wearing" say the obj.
    And obj is takeable
      else "You can't pick" say the obj. "up."
    And obj in hero
      else "You haven't got" say the obj. "."
    Does
--    If obj not in hero then
--      Locate obj in hero.
--      "(You pick" say the obj. "up.)$n"
--    End if.
      Set wearer of obj to hero.
      Make obj worn.
      "You put on" say the obj. "."
  End verb.
End add.


Syntax
  'remove' = 'remove' (obj)
    Where obj IsA object
      else "You can't remove that."
  'remove' = take (obj) off.
  'remove' = take off (obj).

Add to every object
  Verb 'remove'
    Check wearer of obj = hero
      else "You are not wearing" say the obj. "."
    Does
      Set wearer of obj to nobody.
      Make obj not worn.
      "You take off" say the obj. "."
  End verb.
End add.


Syntax undress = undress.

Verb undress
  Does
    If Count in hero, IsA object, is worn > 0 then
      For each worn_item in hero, IsA object, is worn do
        Set wearer of worn_item to nobody.
        make worn_item not worn.
      End for.
      "You remove all the items you where wearing."
    else
      "You're not wearing anything you can remove."
    End if.
End verb.
