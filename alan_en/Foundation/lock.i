﻿-- "lock.i"

Add to every object
  Is
    Not lockable.
    locked.
End add.


Syntax
  lock = lock (obj)
    Where obj IsA object
      else "You can't lock that."

Add to every object
  Verb lock
    Check obj is not ornamental else
      If obj is plural
        then say msg:ornamental_response_P1_pl.
        else say msg:ornamental_response_P1_sg.
      End if.
    And obj is lockable
      else "You can't lock that!"
    And obj is not locked
      else "It's already locked."
    Does
      Make obj locked. Say the obj. "is now locked."
  End verb.
End add.


Syntax
  lock_with = lock (obj) 'with' (key)
    Where obj IsA object
      else "You can't lock that."
    And key IsA object
      else "You can't lock anything with that."

Add to every Object
  Verb lock_with
    When obj
      Check obj is not ornamental else
        If obj is plural
          then say msg:ornamental_response_P1_pl.
          else say msg:ornamental_response_P1_sg.
        End if.
      And key is not ornamental else
        If key is plural
          then say msg:ornamental_response_P2_pl.
          else say msg:ornamental_response_P2_sg.
        End if.
      And obj is lockable
        else "You can't lock that!"
      And obj is not locked
        else "It's already locked."
      And key in hero
        else say msg:you_dont_have_P2.
      Does
        Make obj locked.
        Say the obj. "is now locked."
  End verb.
End add.


Syntax
  unlock = unlock (obj)
    Where obj IsA object
      else "You can't lock that."

Add to every object
  Verb unlock
    Check obj is not ornamental else
      If obj is plural
        then say msg:ornamental_response_P1_pl.
        else say msg:ornamental_response_P1_sg.
      End if.
    And obj is lockable
      else "You can't unlock that!"
    And obj is locked
      else "It's already unlocked."
    Does
      Make obj not locked.
      Say the obj. "is now unlocked."
  End verb.
End add.


Syntax
  unlock_with = unlock (obj) 'with' (key)
    Where obj IsA object
      else "You can't lock that."
    And key IsA object
      else "You can't lock anything with that."

Add to every object
  Verb unlock_with
    When obj
      Check obj is not ornamental else
        If obj is plural
          then say msg:ornamental_response_P1_pl.
          else say msg:ornamental_response_P1_sg.
        End if.
      And key is not ornamental else
        If key is plural
          then say msg:ornamental_response_P2_pl.
          else say msg:ornamental_response_P2_sg.
        End if.
      And obj is lockable
        else "You can't unlock that!"
      And obj is locked
        else "It's already unlocked."
      And key in hero
        else say msg:you_dont_have_P2.
      Does
        Make obj not locked.
        Say the obj. "is now unlocked."
  End verb.
End add.
