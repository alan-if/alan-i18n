-- "accendere.i" <- "turn.i"

Add to every object
  Is not acceso.
     not accendibile.
End add.


Syntax accendere = accendi (ogg)
  Where ogg IsA object
    else "Non è possibile accendere $+1!"

Add to every object
  Verb accendere
    Check ogg is not ornamentale else
      If ogg is plurale
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    And ogg is accendibile
      else "Non puoi accendere $+1!"
    And ogg is not acceso
      else "$+1"
        If ogg is plurale
          then "sono"
          else "è"
        End if. "già acces$$" say ogg:vocale. "!"
    Does
      Make ogg acceso.
      "Hai acceso $+1."
  End verb.
End add.


Syntax spegnere = spegni (ogg)
  Where ogg IsA object
    else "Non è possibile spegnere $+1!"

Add to every object
  Verb spegnere
    Check ogg is not ornamentale else
      If ogg is plurale
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    And ogg is accendibile
      else "Non puoi spegnere $+1!"
    And ogg is acceso
      else "$+1"
        If ogg is plurale
          then "sono"
          else "è"
        End if. "già spent$$" say ogg:vocale. "!"
    Does
      Make ogg not acceso.
      "Hai spento $+1."
  End verb.
End add.
