-- "tocar.i" <-- "touch.i"

Add to every thing
  Is tocable.
End add to thing.

Synonyms
  toco, toca, palpo, palpa, palpar, acaricio, acaricia, acariciar,
  sobo, soba, sobar, manoseo, manosea, manosear = tocar.

Syntax
  tocar = tocar (obj)
    Where obj IsA thing
      else "Eso no lo puedes tocar."

  tocar_con = tocar (obj1) con (obj2)
    Where obj1 IsA thing
      else "Eso no lo puedes tocar."
    And obj2 IsA object
      else "Solo puedes utilizar objetos para tocar."

Add to every object
  Verb tocar
    Check obj is not ornamentale else
      If obj is plural
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    And obj is tocable
      else "Eso es intocable."
    Does
      "Tocas $+1."
  End verb.

  Verb tocar_con
    When obj1
      Check obj1 is not ornamentale else
        If obj1 is plural
          then say msg:ornamentale_P1_pl.
          else say msg:ornamentale_P1_sg.
        End if.
      And obj2 is not ornamentale else
        If obj2 is plural
          then say msg:ornamentale_P2_pl.
          else say msg:ornamentale_P2_sg.
        End if.
      And obj1 is tocable
        else "Eso es intocable."
      And obj1 <> obj2
        else "No tiene sentido tocar algo con si mismo."
    Does
      "Tocas $+1 con $+2."
  End verb.
End add to.
