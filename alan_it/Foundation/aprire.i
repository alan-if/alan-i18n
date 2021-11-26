-- "aprire.i" -> open.i


Syntax
  aprire = apri (ogg)
    Where ogg IsA object
      else "You can't open that." -- @TRANSLATE!

Add to every object
  Is
    Not apribile.
    Not aperto.

  Verb aprire
    Check ogg is apribile
      else "Non è possibile aprirl$$" Say ogg:vocale. "."
    And ogg is not aperto
      else
        Say the ogg.
        If ogg is not plurale
          then "è"
          else "sono"
        End if.
        "già apert$$" Say ogg:vocale. "."
    Does
      Make ogg aperto.
      "Fatto. Ora" say the ogg.
      If ogg is not plurale
        then "è"
        else "sono"
      End if.
      "apert$$" Say ogg:vocale. "."
  End verb.

End add.


Syntax
  aprire_con = open (ogg1) con (ogg2)
    Where ogg1 IsA object
      else "You can't open that." -- @TRANSLATE!
    And ogg2 IsA object
      else "You can't open anything with that." -- @TRANSLATE!

Add to every object
  Verb aprire_con
    When ogg1
      Check ogg2 in hero
        else "You don't have" say the ogg2. "." -- @TRANSLATE!
      Does
        "You can't open" say the ogg1. "with" say the ogg2. "." -- @TRANSLATE!
  End verb.
End add.


Synonyms
  shut = close.

Syntax
  close = close (ogg) -- @TRANSLATE!
    Where ogg IsA object
      else "You can only close objects." -- @TRANSLATE!

Add to every object
  Is not chiudibile.

  Verb close
    Check ogg is chiudibile
      else "You can't close that." -- @TRANSLATE!
    And ogg is aperto
      else "It is not open." -- @TRANSLATE!
     Does
       Make ogg not aperto.
       Say the ogg. "is now closed." -- @TRANSLATE!
    End verb.

End add.


Syntax
  close_with = close (ogg1) 'with' (ogg2) -- @TRANSLATE!
    Where ogg1 IsA object
      else "You can't close that." -- @TRANSLATE!
    And ogg2 IsA object
      else "You can't close anything with that." -- @TRANSLATE!

Add to every object
  Verb close_with
    When ogg1
      Check ogg2 in hero
        else "You don't have" say the ogg2. "." -- @TRANSLATE!
      And ogg1 Is apribile
        else "You can't close" say the ogg1. "." -- @TRANSLATE!
      Does -- To be overridden by DOES ONLY where appropriate...
        "You can't close" say the ogg1. "with" say the ogg2. "." -- @TRANSLATE!
  End verb.
End add.
