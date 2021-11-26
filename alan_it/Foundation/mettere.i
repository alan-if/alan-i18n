-- "mettere.i" -> put.i

-- Synonyms
--   place = put.

-- @NOTE: Questo verbo non ha senso in italiano, dovrei invece usarlo per
--        rettificare la sintassi!

-- Syntax
--   mettere = metti (ogg) *
--     Where ogg IsA object
--       else "You can't put that anywhere." -- @TRANSLATE!

-- Add to every object
--   Verb mettere
--     Check ogg in hero
--       else "Non possiedi" say the ogg. "."
--     Does
--       Locate ogg here.
--       "Dropped." -- @TRANSLATE!
--   End verb.
-- End add.


Syntax
  mettere_in = metti (ogg1) 'in' (ogg2)
    Where ogg1 IsA object
      else "You can't put that anywhere." -- @TRANSLATE!
    And ogg2 IsA container
      else "You can't put anything in that." -- @TRANSLATE!

Add to every object
  Verb mettere_in
    When ogg1
      Check ogg1 in hero
      else "Non possiedi" say the ogg1. "."
      And ogg1 <> ogg2
        else "You can't put something into itself!" -- @TRANSLATE!
      And ogg2 <> hero
        else "You can't put" say ogg1. "into yourself!" -- @TRANSLATE!
      Does
        Locate ogg1 in ogg2.
        -- Check that operation succeeded
        -- (could fail due to TAKING clause):
        If ogg1 directly in ogg2 then
          -- In case item was being worn:
          Set indossatore of ogg1 to nessuno.
          Make ogg1 not indossato.
          "Fatto."
        End if.
    End verb.
End add.


Syntax
  mettere_vicino = metti (ogg1) vicino a (ogg2)
    Where ogg1 IsA object
      else "You can't put that anywhere." -- @TRANSLATE!
    And ogg2 IsA thing
      else "You can't put anything near that." -- @TRANSLATE!

  mettere_dietro = metti (ogg1) dietro (ogg2)
    Where ogg1 IsA object
      else "You can't put that anywhere." -- @TRANSLATE!
    And ogg2 IsA thing
      else "You can't put anything behind that." -- @TRANSLATE!

  mettere_su = metti (ogg1) su (ogg2)
    Where ogg1 IsA object
      else "You can't put that anywhere." -- @TRANSLATE!
    And ogg2 IsA thing
      else "You can't put anything on that." -- @TRANSLATE!

  mettere_sotto = metti (ogg1) sotto (ogg2)
    Where ogg1 IsA object
      else "You can't put that anywhere." -- @TRANSLATE!
    And ogg2 IsA thing
      else "You can't put anything under that." -- @TRANSLATE!

Add to every object
  Verb mettere_vicino, mettere_dietro, mettere_su, mettere_sotto
    When ogg1
      Check ogg1 in hero
      else "Non possiedi" say the ogg1. "."
      And ogg2 not in hero
        else
          "You are carrying" say the ogg2. -- @TRANSLATE!
          ". If you want to take" say the ogg1. "just say so."
      Does
        "Naaah. I'd rather just put" say the ogg1. "down here." -- @TRANSLATE!
        Locate ogg1 at ogg2.
        -- In case item was being worn:
        Set indossatore of ogg1 to nessuno.
        Make ogg1 not indossato.
  End verb.
End add.
