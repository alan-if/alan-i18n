-- "lanciare.i" -> throw.i

-- Synonyms
--   dump, cast = throw.

-- @NOTE: sinonimi: scaglia, tira?
--        Però 'tira' è ambiguo e si sovrappone a tira (=pull).

Syntax
  lanciare = lancia (ogg) *
    Where ogg IsA object
      else "You can only throw objects." -- @TRANSLATE!

Add to every object
  Verb lanciare
    Check ogg in hero
      else "Non possiedi" say the ogg. "."
    Does
      "You can't throw very far,"
      say the ogg. "ends up on the ground." -- @TRANSLATE!
      Locate ogg here.
      -- In case item was being worn:
      Set indossatore of ogg to nessuno.
      Make ogg not indossato.
  End verb.
End add.

Syntax
  lanciare_contro = lancia (ogg1) contro (ogg2)
    Where ogg1 IsA object
      else "You can only throw objects." -- @TRANSLATE!
    And ogg2 IsA thing
      else "You can't throw anything at that." -- @TRANSLATE!

  lanciare_a = lancia (ogg1) a (ogg2)
    Where ogg1 IsA object
      else "You can't be serious." -- @TRANSLATE!
    And ogg2 IsA thing
      else "You can't throw anything to that." -- @TRANSLATE!

Add to every object
  Verb lanciare_contro, lanciare_a
    When ogg1
      Check ogg1 in hero
        else "Non possiedi" say the ogg1. "."
      And ogg2 not in hero
        else
          "You are carrying" say the ogg2. "." -- @TRANSLATE!
      And ogg2 <> hero
        else
          "You can't throw" say the ogg1. -- @TRANSLATE!
          "at yourself."
      Does
        Say the ogg1. "bounces harmlessly off" -- @TRANSLATE!
        say the ogg2. "and ends up on the ground."
        Locate ogg1 here.
        -- In case item was being worn:
        Set indossatore of ogg1 to nessuno.
        Make ogg1 not indossato.
  End verb.
End add.


Syntax
  lanciare_in = lancia (ogg1) 'in' (ogg2)
    Where ogg1 IsA object
      else "Don't be silly." -- @TRANSLATE!
    And ogg2 IsA container
      else "You can't throw anything in that." -- @TRANSLATE!

Add to every object
  Verb lanciare_in
    When ogg1
      Check ogg1 in hero
        else "Non possiedi" say the ogg1. "."
      And ogg1 <> ogg2
        else "Now, that would be a good trick!" -- @TRANSLATE!
      And ogg2 <> hero
        else
          "You can't put" say the ogg1. "into yourself!" -- @TRANSLATE!
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
