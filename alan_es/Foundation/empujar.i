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
  empujar = empujar 'el' (obj).

Add to every object
  Verb empujar
    Check obj is empujable
      else "No puedes empujar eso."
    Does
      "Empujas" say the obj. "."
  End verb.
End add to.

Syntax
  empujar_con = empujar (obj1) 'con' (obj2)
    Where obj1 IsA thing
      else "No puedes empujar eso."
    And obj2 IsA object
      else "Solo puedes usar objetos para empujar cosas con ellos."
  empujar_con = empujar (obj1) 'con' 'el' (obj2).
  empujar_con = empujar 'el' (obj1) 'con' (obj2).
  empujar_con = empujar 'el' (obj1) 'con' 'el' (obj2).

Add to every object
  Verb empujar_con
    When obj1
      Check obj1 is empujable
        else "No puedes empujar eso."
    Does
      "Usando" say the obj2. "empujas" say the obj1. "."
  End verb.
End add to.
