-- "empujar.i" <-- "push.i"

Add to every thing
  Is empujable.
End add to thing.

Synonyms
  empujo, empuja = empujar.

Syntax
  empujar = empujar (obj)
    Where obj IsA thing
      else "¡No puedes empujar eso!."
  empujar = empujar (obj).

Add to every object
  Verb empujar
    Check obj is not ornamentale else
      If obj is plural
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    And obj is empujable
      else "No puedes empujar eso."
    Does
      "Empujas" say the obj. "."
  End verb.
End add to.

Syntax
  empujar_con = empujar (obj1) con (obj2)
    Where obj1 IsA thing
      else "No puedes empujar eso."
    And obj2 IsA object
      else "Solo puedes usar objetos para empujar cosas con ellos."

Add to every object
  Verb empujar_con
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
      And obj1 is empujable
        else "No puedes empujar eso."
    Does
      "Usando" say the obj2. "empujas" say the obj1. "."
  End verb.
End add to.
