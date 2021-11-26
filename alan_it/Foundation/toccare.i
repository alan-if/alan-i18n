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
      else "Impossible farlo con" say the ogg2.
           "; l'azione richiede l'uso di oggetti." -- @REVISE TEXT!

Add to every object
  Verb toccare
    Check ogg is toccabile
    --else "You can't touch that."
      else "Non è possibile toccarl$$" say ogg:vocale. "$$!"
    Does
      "Tocchi" say the ogg. "."
  End verb.

  Verb toccare_con
    When ogg1
      Check ogg1 Is toccabile
      --else "You can't touch that."
        else "Non è possibile toccarl$$" say ogg1:vocale. "$$!"
      And ogg1 <> ogg2
      --else "It doesn't make sense to touch something with itself."
        else "Non avrebbe alcun senso toccare qualcosa con sé stessa."
      Does
        "Tocchi" say the ogg1. "con" say the ogg2. "."
  End verb.
End add.
