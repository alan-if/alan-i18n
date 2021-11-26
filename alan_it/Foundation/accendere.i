-- "accendere.i" -> turn.i

Add to every object
  Is
    Not acceso.
    Not accendibile.
End add.


Syntax
  accendere = accendi (ogg)
    Where ogg IsA object
      else "You can't turn that on." -- @TRANSLATE!

Add to every object
  Verb accendere
    Check ogg is accendibile
      else "You can't turn that on." -- @TRANSLATE!
    And ogg is not acceso
      else say the ogg.
           If ogg is not plurale
             then "è"
             else "sono"
           End if. "già acces$$" say ogg:vocale. "!"
    Does
      Make ogg acceso.
      "Hai acceso" say the ogg. "."
  End verb.
End add.


Syntax
  spegnere = spegni (ogg)
    Where ogg IsA object
      else "You can't turn that off." -- @TRANSLATE!

Add to every object
  Verb spegnere
    Check ogg is accendibile
      else "You can't turn that off." -- @TRANSLATE!
    And ogg is acceso
      else say the ogg.
           If ogg is not plurale
             then "è"
             else "sono"
           End if. "già spent$$" say ogg:vocale. "!"
    Does
      Make ogg not acceso.
      "Hai spento" say the ogg. "."
  End verb.
End add.
