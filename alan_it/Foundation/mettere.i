-- "mettere.i" <- "put.i"

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
--       else say msg:non_possiedi_P1.
--     Does
--       Locate ogg here.
--       "Dropped." -- @TRANSLATE!
--   End verb.
-- End add.


Syntax mettere_in = metti (ogg1) 'in' (ogg2)
  Where ogg1 IsA object
    else "$+1 non"
      If ogg1 is plurale
        then "possono"
        else "può"
      End if.
      "essere mess$$" say ogg1:vocale.
      "in alcun dove!"
  And ogg2 IsA container
    else "Non è possibile mettere nulla"
          say ogg2:prep_IN. "$+2!"

Add to every object
  Verb mettere_in
    When ogg1
      Check ogg1 is not scenario else
        If ogg1 is plurale
          then say msg:scenario_P1_pl.
          else say msg:scenario_P1_sg.
        End if.
      And ogg2 is not scenario else
        If ogg2 is plurale
          then say msg:scenario_P2_pl.
          else say msg:scenario_P2_sg.
        End if.
      And ogg1 in hero
        else say msg:non_possiedi_P1.
      And ogg1 <> ogg2
        else "Non puoi mettere una cosa in se stessa!"
      And ogg2 <> hero
        else "Non puoi mettere nulla in te stesso!"  --@FIXME: Se Hero è femmina?
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
      else "Non è possibile spostare $+1!"
    And ogg2 IsA thing
      else "Non è possibile mettere nulla vicino"
            say ogg2:prep_A. "$+2!"

  mettere_dietro = metti (ogg1) dietro (ogg2)
    Where ogg1 IsA object
      else "Non è possibile spostare $+1!"
    And ogg2 IsA thing
      else "Non è possibile mettere nulla dietro"
            say ogg2:prep_A. "$+2!"

  mettere_su = metti (ogg1) su (ogg2)
    Where ogg1 IsA object
      else "Non è possibile spostare $+1!"
    And ogg2 IsA thing
      else "Non è possibile mettere nulla"
            say ogg2:prep_SU. "$+2!"

  mettere_sotto = metti (ogg1) sotto (ogg2)
    Where ogg1 IsA object
      else "Non è possibile spostare $+1!"
    And ogg2 IsA thing
      else "Non è possibile mettere nulla sotto $+2!"

Add to every object
  Verb mettere_vicino, mettere_dietro, mettere_su, mettere_sotto
    When ogg1
      Check ogg1 is not scenario else
        If ogg1 is plurale
          then say msg:scenario_P1_pl.
          else say msg:scenario_P1_sg.
        End if.
      And ogg2 is not scenario else
        If ogg2 is plurale
          then say msg:scenario_P2_pl.
          else say msg:scenario_P2_sg.
        End if.
      And ogg1 in hero
        else say msg:non_possiedi_P1.
      And ogg2 not in hero
        else
          "Ma tu stai"
          If ogg2 IsA object then
            If ogg2 is indossato
              then "indossando"
              else "trasportando"
            End if.
            else "trasportando"
          End if. "$+2!"
          "Se vuoi prendere $+1 dillo chiaramente."
      Does
        "Ripensandoci, decidi di posare a terra $+1."
        Locate ogg1 at ogg2.
        -- In case item was being worn:
        Set indossatore of ogg1 to nessuno.
        Make ogg1 not indossato.
  End verb.
End add.
