-- "prendere.i" <- "take.i"

Add to every thing
  Is inanimato.
End add.

Add to every object
  Is prendibile.
End add.

Add to every actor
  Is not inanimato.
End add.


-- Synonyms
--   get, carry, obtain, grab, steal, confiscate, hold = take.

-- @NOTE: Non sono convinto che definire 'raccogli' e 'trasporta' come sinonimi
--        di 'prendi' sia una buona idea, perché l'utente potrebbe creare verbi
--        in cui i termini non sarebbero intercambiabili (e.s. "prendi tempo",
--        "raccogli la sfida", ecc.).

-- @NOTE: Quanto ad 'afferra', non sempre collima con 'prendi', e.s. "afferra
--        la fune", dove il senso non è di impossessarsene ma di trattenere.

Syntax
  prendere = prendi (ogg) *
    Where ogg IsA object
      else "Puoi prendere soltanto oggetti!"
  prendere = raccogli (ogg).
  prendere = afferra (ogg).   --> @TODO: Eliminare?
  prendere = trasporta (ogg). --> @TODO: Eliminare?

Add to every object
  Verb prendere
    Check ogg is prendibile
      else "Non puoi prendere $+1."
    And ogg not in hero
      else "Possiedi già $+1"
            If ogg is indossato
              then
                ", l$$" say ogg:vocale.
                "stai indossando."
              else "."
            End if.
    And peso of ogg <=50
      else say the ogg. "pesa"
           If ogg is plurale
             then "$$no"
           End if. "troppo."
    Does
      Locate ogg in hero.
      -- In case item was being worn:
      Set indossatore of ogg to nessuno.
      Make ogg not indossato.
      "Pres$$" say ogg:vocale. "."
  End verb.
End add.


-- i6: lascia, lancia, abbandona, posa, metti giù
-- Synonyms
--   discard = drop.

Syntax
  lasciare = lascia (ogg)*.
  lasciare = abbandona (ogg)*.
  lasciare = metti giù (ogg)*.
  lasciare = posa (ogg)*.


Add to every object
  Verb lasciare
    Check ogg in hero
      else "Non possiedi" say the ogg. "."
    Does
      Locate ogg here.
      -- In case item was being worn:
      Set indossatore of ogg to nessuno.
      Make ogg not indossato.
      "Fatto."
  End verb.
End add.


Syntax
  prendere_da = prendi (ogg) da (detentore)
    Where ogg IsA object
      else "Puoi prendere soltanto oggetti!"
    And detentore IsA thing
      else
        "Non è possibile prendere nulla"
        say detentore:prep_DA. "$+2!"
    And detentore IsA container
      else
        "Non è possibile prendere nulla"
        say detentore:prep_DA. "$+2!"
  prendere_da = prendi  (ogg)* dai (detentore).
  prendere_da = rimuovi (ogg)* da  (detentore).
  prendere_da = rimuovi (ogg)* dai (detentore).
  prendere_da = togli   (ogg)* da  (detentore).
  prendere_da = togli   (ogg)* dai (detentore).
  ------------------------------------------------------------------------------
  -- NOTA: Le sintassi alternative per la preposizione articolata 'dai' sono
  --       necessarie perché 'dai' non può essere sinonimo di 'da' poiché
  --       confliggerebbe con il verbo "dai".
  ------------------------------------------------------------------------------

Add to every object
  Verb prendere_da
    When ogg
      Check ogg not in hero
        else "Possiedi già" say the ogg. "."
      And ogg in detentore
        else
          If detentore IsA actor
            then "$+2 non"
              If detentore is plurale
                then "possiedono"
                else "possiede"
              End if. "$+1."
            else
              "$+1 non si trova"
              If ogg is plurale
                then "$$no"
              End if. "lì."
          End if.
      Does
        If detentore=hero then
          -- @CHECKME: Would this ever be executed??? See Issue #20
          "Non hai bisogno di prendere cose da te stesso!"
        else
          Locate ogg in hero.
          -- In case item was being worn:
          Set indossatore of ogg to nessuno.
          Make ogg not indossato.
          "Fatto, hai preso" say the ogg. "."
        End if.
  End verb.
End add.
