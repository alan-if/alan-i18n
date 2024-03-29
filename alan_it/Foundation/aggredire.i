﻿-- "aggredire.i" <- "attack.i"

Add to every thing
  Can not sparare.
End add.

Add to every object
  Is not arma.
  Can not sparare. -- @DELME? (redundant! already on THING)
End add.

--==============================================================================
--                               A G G R E D I R E
--==============================================================================

-- @NOTA: In Inform 6 'attacca' riconosce questi sinonimi:
--        rompi, colpisci, combatti, uccidi, tortura, lotta, sfonda, ammazza,
--        picchia.

-- @NOTE: Alan StdLib Italian:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--    SYNONYMS combatti, picchia = attacca.
--    SYNTAX attacca = attacca (bersaglio)
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-- Synonyms
--   kill, fight, hit = attack.
--   fire = shoot.

Synonyms combatti, picchia, attacca = aggredisci.

Syntax aggredire = aggredisci (png)
  Where png IsA thing
    else "Non è possibile aggredire $+1!"

Add to every thing
  Verb aggredire
    Does
      Say msg:violenza_non_risposta.
  End verb.
End add.


-- @NOTE: Alan StdLib Italian:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--    SYNTAX attacca_con = attacca (bersaglio) con (arma)
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Syntax aggredire_con = aggredisci (png) con (ogg)
  Where png IsA thing
    else "Non è possibile aggredire $+1!"
  And ogg IsA object
    else "Non è possibile aggredire nulla con $+2!"

Add to every thing
  Verb aggredire_con
    When ogg
      Check ogg is not ornamentale else
        If ogg is plurale
          then say msg:ornamentale_P2_pl.
          else say msg:ornamentale_P2_sg.
        End if.
      And ogg in hero
        else say msg:non_possiedi_P2.
      And ogg is arma
        else "Non puoi aggredire nulla con $+2!"
      Does
        Say msg:violenza_non_risposta.
  End verb.
End add.

--==============================================================================
--                                S P A R A R E
--==============================================================================

Syntax spara0 = spara.

Verb spara0 -- @NOTE: Should this be a META VERB and not consume a turn?
  Does
    "Devi specificare con cosa vorresti sparare e a chi o che cosa!"
End verb.


Syntax spara = spara con (arma)
  Where arma IsA object
    else "Non è possibile sparare con $+1!"

Add to every thing
  Verb spara
    Check arma is not ornamentale else
      If arma is plurale
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    And arma is arma
      else "Non è possibile sparare con $+1!"
    And arma can sparare
      else "Non è possibile sparare con $+1!"
    And arma in hero
      else say msg:non_possiedi_P1.
    Does
      "Devi specificare a cosa vorresti sparare."
  End verb.
End add.


Syntax
  sparare_a0 = spara a (bersaglio)
    Where bersaglio IsA thing
      else "Non è possibile sparare"
            say bersaglio:prep_A. "$+1!"
  sparare_a0 = spara contro (bersaglio).

Add to every thing
  Verb sparare_a0
    Check bersaglio is not ornamentale else
      If bersaglio is plurale
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    Does
      "Devi specificare con cosa vorresti sparare"
      say bersaglio:prep_A. "$+1!"
  End verb.
End add.


-- @NOTE: (png) or (bersaglio)? Non sembra che questi verbi
--        agiscano solo su attori, ma anche su oggetti!

Syntax
  sparare_a = spara con (arma) a (bersaglio)
    Where arma IsA object
      else "Non è possibile sparare con $+1!"
    And bersaglio IsA thing
      else "Non è possibile sparare"
            say bersaglio:prep_A. "$+2!"
  sparare_a = spara a (bersaglio) con (arma).

Add to every thing
  Verb sparare_a
    When arma
      Check arma is not ornamentale else
        If arma is plurale
          then say msg:ornamentale_P1_pl.
          else say msg:ornamentale_P1_sg.
        End if.
      And bersaglio is not ornamentale else
        If bersaglio is plurale
          then say msg:ornamentale_P2_pl.
          else say msg:ornamentale_P2_sg.
        End if.
      And arma is arma
        else "Non è possibile sparare con $+1!"
      And arma can sparare
        else "Non è possibile sparare con $+1!"
      And arma in hero
        else say msg:non_possiedi_P1.
      Does
        Say msg:violenza_non_risposta.
  End verb.
End add.
