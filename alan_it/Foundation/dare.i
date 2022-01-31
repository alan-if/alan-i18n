-- "dare.i" <- "give.i"

Syntax dare = dai (ogg) a (png)
  Where ogg IsA object
    else "Puoi dare solo oggetti."
  And png IsA container
    -- else "You can't give things to that!"
    else "Non puoi dare nulla" say png:prep_A. "$+2."

Add to every object
  Verb dare
    When ogg
      Check ogg is not ornamentale else
        If ogg is plurale
          then say msg:ornamentale_P1_pl.
          else say msg:ornamentale_P1_sg.
        End if.
      And png is not ornamentale else
        If png is plurale
          then say msg:ornamentale_P2_pl.
          else say msg:ornamentale_P2_sg.
        End if.
      And ogg in hero
        else say msg:non_possiedi_P1.
    Does
      If png=hero then
        "Possiedi già $+1!"
      else
        "Dai $+1" say png:prep_A. "$+2."
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
