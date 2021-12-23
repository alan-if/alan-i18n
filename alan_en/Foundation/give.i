-- "give.i"

-- @NOTE: Why 'recip' can be an object and not only an actor?

Syntax
  give = 'give' (obj) 'to' (recip)
    Where obj IsA object
      else "You can only give away objects."
    And recip IsA container
      else "You can't give things to that!"
  give = give (recip) (obj).

Add to every object
  Verb give
    When obj
      Check obj is not scenery else
        If obj is plural
          then say msg:scenery_response_P1_pl.
          else say msg:scenery_response_P1_sg.
        End if.
      And recip is not scenery else
        If recip is plural
          then say msg:scenery_response_P2_pl.
          else say msg:scenery_response_P2_sg.
        End if.
      And obj in hero
        else say msg:you_dont_have_P1.
    Does
      If recip=hero then
        "You already have" say the obj. "!"
      else
        "You give" say the obj. "to" say the recip. "."
        Locate obj in recip.
        -- Check that operation succeeded
        -- (could fail due to TAKING clause):
        If obj directly in recip then
          -- In case item was being worn:
          Set wearer of obj to nobody.
          Make obj not worn.
        End if.
      End if.
  End verb.
End add.
