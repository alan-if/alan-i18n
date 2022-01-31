-- "toccare.i" -> touch.i

Add to every thing
  Is toccabile.
End add.


Syntax
  toccare = tocca (ogg)
    Where ogg IsA thing
    --else "You can't touch that."
      else "Non è possibile toccarl$$" say ogg:vocale. "$$!"

  toccare_con = tocca (ogg1) con (ogg2)
    Where ogg1 IsA thing
    --else "You can't touch that."
      else "Non è possibile toccarl$$" say ogg1:vocale. "$$!"
    And ogg2 IsA object
    --else "You can only use objects to touch with."
      else "Impossible farlo con $+2;
            l'azione richiede l'uso di oggetti." -- @REVISE TEXT!

Add to every object
  Verb toccare
    Check ogg is not ornamentale else
      If ogg is plurale
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    And ogg is toccabile
      else "Non è possibile toccarl$$" say ogg:vocale. "$$!"
    Does
      "Tocchi" say the ogg. "."
  End verb.

  Verb toccare_con
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
      And ogg1 Is toccabile
        else "Non è possibile toccarl$$" say ogg1:vocale. "$$!"
      And ogg1 <> ogg2
        else "Non avrebbe alcun senso toccare qualcosa con sé stessa."
      Does
        "Tocchi" say the ogg1. "con" say the ogg2. "."
  End verb.
End add.
