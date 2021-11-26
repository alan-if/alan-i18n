-- "dare.i" -> give.i

Syntax
  dare_a = dai (ogg) a (png)
    Where ogg IsA object
      -- else "You can only give away objects."
      else "Puoi dare solo oggetti."
    And png IsA container
      -- else "You can't give things to that!"
      else "Non puoi dare nulla" say png:prep_A. say the png.

Add to every object
  Verb dare_a
    When ogg
      Check ogg in hero
        else "Non possiedi" say the ogg. "."
    Does
      If png=hero then
        "Possiedi già" say the ogg. "!"
      else
        "Dai" say the ogg. say png:prep_A. say the png. "."
        Locate ogg in png.
        -- Check that operation succeeded
        -- (could fail due to TAKING clause):
        If ogg directly in png then
          -- In case item was being worn:
          Set indossatore of ogg to nessuno.
          Make ogg not indossato.
        End if.
      End if.
  End verb.
End add.
