-- "aprire.i" <- "open.i"


Syntax aprire = apri (ogg)
  Where ogg IsA object
    else "Puoi aprire solo oggetti!"

Add to every object
  Is
    Not apribile.
    Not aperto.

  Verb aprire
    Check ogg is apribile
      else "Non è possibile aprirl$$" say ogg:vocale. "."
    And ogg is not aperto
      else
        Say the ogg.
        If ogg is not plurale
          then "è"
          else "sono"
        End if.
        "già apert$$" say ogg:vocale. "."
    Does
      Make ogg aperto.
      "Fatto. Ora" say the ogg.
      If ogg is not plurale
        then "è"
        else "sono"
      End if.
      "apert$$" say ogg:vocale. "."
  End verb.

End add.


Syntax aprire_con = apri (ogg1) con (ogg2)
  Where ogg1 IsA object
    else "Puoi aprire solo oggetti!"
  And ogg2 IsA object
    else "Non puoi aprire nulla con $+2!"

Add to every object
  Verb aprire_con
    When ogg1
      Check ogg2 in hero
        else "Non possiedi $+2."
      Does
        "Non puoi aprire $+1 con $+2."
  End verb.
End add.


Syntax chiudere = chiudi (ogg)
    Where ogg IsA object
      else "Puoi chiudere solo oggetti!"

Add to every object
  Is not chiudibile.

  Verb chiudere
    Check ogg is chiudibile
      else "Non è possibile chiuderl$$" say ogg:vocale. "."
    And ogg is aperto
      else "$+1 non"
        If ogg is plurale
          then "sono"
          else "è"
        End if.
        "apert$$" say ogg:vocale. "!"
     Does
       Make ogg not aperto.
       "Hai chiuso $+1."
    End verb.
End add.


Syntax chiudere_con = chiudi (ogg1) con (ogg2)
  Where ogg1 IsA object
      else "Puoi chiudere solo oggetti!"
  And ogg2 IsA object
    else "Non puoi chiudere nulla con $+2!"

Add to every object
  Verb chiudere_con
    When ogg1
      Check ogg2 in hero
        else "Non possiedi $+2!"
      And ogg1 Is apribile
        else "Non è possibile chiudere $+1!"
      Does -- To be overridden by DOES ONLY where appropriate...
        "Non puoi chiudere $+1 con $+2."
  End verb.
End add.
