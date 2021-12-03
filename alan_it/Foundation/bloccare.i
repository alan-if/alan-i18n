-- "bloccare.i" <- "lock.i"

Add to every object
  Is not bloccabile.
     bloccato.
End add.


-- @NOTE: Alan StdLib Italian:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--    SYNTAX blocca = blocca (ogg)
--    SYNONYMS serra = blocca.
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Synonyms serra = blocca.

Syntax bloccare = blocca (ogg)
  Where ogg IsA object
    else "Non è possibile bloccare $+1!"

Add to every object
  Verb bloccare
    Check ogg is bloccabile
      else "Non puoi bloccare $+1!"
    And ogg is not bloccato
      else say the ogg.
           If ogg is not plurale
             then "è"
             else "sono"
           End if. "già bloccat$$"
           say ogg:vocale. "!"
    Does
      Make ogg bloccato.
      "Fatto, ora $+1"
      If ogg is not plurale
        then "è"
        else "sono"
      End if. "bloccat$$" say ogg:vocale. "."
  End verb.
End add.


Syntax bloccare_con = blocca (ogg) con (chiave)
  Where ogg IsA object
    else "Non è possibile bloccare $+1!"
  And chiave IsA object
    else "Non è possibile bloccare nulla con $+2!"

Add to every Object
  Verb bloccare_con
    When ogg
      Check ogg is bloccabile
        else "Non puoi bloccare $+1!"
      And ogg is not bloccato
        else "$+1"
             If ogg is not plurale
               then "è"
               else "sono"
             End if. "già bloccat$$"
             say ogg:vocale. "!"
      And chiave in hero
        else "Non possiedi $+2!"
      Does
        Make ogg bloccato.
        "Fatto, ora $+1"
        If ogg is not plurale
          then "è"
          else "sono"
        End if. "bloccat$$" say ogg:vocale. "."
  End verb.
End add.


Syntax sbloccare = sblocca (ogg)
  Where ogg IsA object
    else "Non è possibile sbloccare $+1!"

Add to every object
  Verb sbloccare
    Check ogg is bloccabile
      else "Non puoi sbloccare $+1!"
    And ogg is bloccato
        else "$+1"
             If ogg is not plurale
               then "è"
               else "sono"
             End if. "già sbloccat$$"
             say ogg:vocale. "!"
    Does
      Make ogg not bloccato.
      "Fatto, ora $+1"
      If ogg is not plurale
        then "è"
        else "sono"
      End if. "sbloccat$$" say ogg:vocale. "."
  End verb.
End add.


Syntax sbloccare_con = sblocca (ogg) con (chiave)
  Where ogg IsA object
    else "Non è possibile sbloccare $+1!"
  And chiave IsA object
    else "Non è possibile sbloccare nulla con $+2!"

Add to every object
  Verb sbloccare_con
    When ogg
      Check ogg is bloccabile
        else "Non puoi sbloccare $+1!"
      And ogg is bloccato
        else "$+1"
             If ogg is not plurale
               then "è"
               else "sono"
             End if. "già sbloccat$$"
             say ogg:vocale. "!"
      And chiave in hero
        else "Non possiedi $+2!"
      Does
        Make ogg not bloccato.
        "Fatto, ora $+1"
        If ogg is not plurale
          then "è"
          else "sono"
        End if. "sbloccat$$" say ogg:vocale. "."
  End verb.
End add.
