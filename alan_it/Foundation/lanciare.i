﻿-- "lanciare.i" <- "throw.i"

-- Synonyms
--   dump, cast = throw.

-- @NOTE: sinonimi: scaglia, tira?
--        Però 'tira' è ambiguo e si sovrappone a tira (=pull).

Syntax lanciare = lancia (ogg) *
  Where ogg IsA object
    else "Puoi lanciare solo oggetti!"

Add to every object
  Verb lanciare
    Check ogg is not ornamentale else
      If ogg is plurale
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    And ogg in hero
      else say msg:non_possiedi_P1.
    Does
      "Non lanci molto lontano, $+1 finisc$$"
      If ogg is plurale
        then "ono"
        else "e"
      End if. "a terra poco più in là."
      Locate ogg here.
      -- In case item was being worn:
      Set indossatore of ogg to nessuno.
      Make ogg not indossato.
  End verb.
End add.

Syntax lanciare_contro = lancia (ogg1) contro (ogg2)
  Where ogg1 IsA object
    else "Puoi lanciare solo oggetti!"
  And ogg2 IsA thing
    else "Non puoi lanciare nulla contro $+2!"

  lanciare_a = lancia (ogg1) a (ogg2)
    Where ogg1 IsA object
      else "Dici sul serio?"
    And ogg2 IsA thing
    else "Non puoi lanciare nulla" say ogg2:prep_A. "$+2!"

Add to every object
  Verb lanciare_contro, lanciare_a
    When ogg1
      Check ogg1 is not ornamentale else
        If ogg1 is plurale
          then say msg:ornamentale_P1_pl.
          else say msg:ornamentale_P1_sg.
        End if.
      And ogg2 is not ornamentale else
        If ogg2 is plurale
          then say msg:ornamentale_P2_pl.
          else say msg:ornamentale_P2_sg.
        End if.
      And ogg1 in hero
        else say msg:non_possiedi_P1.
      And ogg2 not in hero
        else
          "Non puoi lanciare nulla contro qualcosa che stai"
          If ogg2 IsA object then
          If ogg2 is indossato
            then "idossando!"
            else "trasportando!"
          End if. End if.
      And ogg2 <> hero
        else
          "Che senso ha lanciare oggetti a se stessi?"
      Does
        "Dopo aver rimbalzato contro $+2, $+1 finisc$$"
        If ogg1 is plurale
          then "ono"
          else "e"
        End if. "a terra."
        Locate ogg1 here.
        -- In case item was being worn:
        Set indossatore of ogg1 to nessuno.
        Make ogg1 not indossato.
  End verb.
End add.


Syntax lanciare_in = lancia (ogg1) 'in' (ogg2)
  Where ogg1 IsA object
    else "Dici sul serio?"
  And ogg2 IsA container
    else "Non puoi lanciare nulla" say ogg2:prep_IN. "$+2!"

Add to every object
  Verb lanciare_in
    When ogg1
      Check ogg1 is not ornamentale else
        If ogg1 is plurale
          then say msg:ornamentale_P1_pl.
          else say msg:ornamentale_P1_sg.
        End if.
      And ogg2 is not ornamentale else
        If ogg2 is plurale
          then say msg:ornamentale_P2_pl.
          else say msg:ornamentale_P2_sg.
        End if.
      And ogg1 in hero
        else say msg:non_possiedi_P1.
      And ogg1 <> ogg2
        else "Riuscire a lanciare un oggetto in se stesso richiederebbe un miracolo!"
      And ogg2 <> hero
        else
          "Non puoi mettere nulla dentro di te!"
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
