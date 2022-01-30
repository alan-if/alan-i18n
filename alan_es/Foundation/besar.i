-- "besar.i" <-- "kiss.i"

Synonyms
  beso, besa, besucar, besuco, besuca, besuqueo, besuquea, besuquear = besar.
Syntax
  besar = besar (obj)
    Where obj IsA thing
      else "¡No se puede besar!"

Add to every thing
  Verb besar
    Check obj is not ornamentale else
      If obj is plural
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    Does
      If obj=hero then
        "Bueno, ¡si insistes!"
      else
        If obj is InAnimado then
          "Besas" say the obj. "."
        else
          Say the obj. "esquiva tus intentos."
        End if.
      End if.
  End verb.
End add to.
