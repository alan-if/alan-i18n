-- "atacar.i" <-- "attack.i"

Add to every thing
  Is not dispararable.
End add to thing.

Add to every object
  Is
    Not arma.
    Not dispararable.
End add to object.


Synonyms
  mata, mato, matar,
  golpea, golpeo, golpear,
  lucha, lucho, luchar,
  ataca, ataco, patea, pateo,
  patear = atacar.
  dispara, disparo = disparar.


Syntax
  atacar = atacar (act)
    Where act IsA thing
      else "No puedes atacarle."

Add to every thing
  Verb atacar
    Does
      "La violencia no es la solución. Por lo menos, no siempre."
  End verb.
End add to.



Syntax
  atacar_con = atacar (act) con (obj)
    Where act IsA thing
      else "No puedes atacar a eso."
    And obj IsA object
      else "¡No puedes atacar nada con eso!"

Add to every thing
  Verb atacar_con
    When obj
      Check obj in hero
        else "No tienes ese objeto para atacar con él."
      And obj is arma
        else "¡No tiene sentido atacar nada con eso!"
    Does
      "La violencia no es la solución."
  End verb.
End add to.


Syntax
  disparar = disparar (obj)
    Where obj IsA thing
      else "No puedes disparar a eso."
  disparar = disparar a (obj).


Add to every thing
  Verb disparar
    Does
      If obj is dispararable then
        "Debes especificar contra qué disparar."
      else
        "Debes especificar con qué quieres disparar al"
        Say the obj. "."
      End if.
  End verb.
End add to.



Syntax
  disparar_a = disparar (obj) a (act)
    Where obj IsA object
      else "No puedes disparar eso."
    And act IsA thing
      else "No puedes disparar a eso."

  disparar_con = disparar (act) con (obj)
    Where obj IsA object
      else "No puedes disparar eso."
    And act IsA thing
      else "No puedes disparar a eso."

Add to every thing
  Verb disparar_a
    When obj
      Check obj in hero
        else "No lo tienes."
      And obj is dispararable
        else "No puedes disparar a nada con eso."
    Does
      "La violencia no es la solución."
  End verb.

  Verb disparar_con
    When obj
      Check obj in hero
        else "No tienes eso."
      And obj is dispararable
        else "No puedes disparar a nada con eso."
    Does
      "La violencia no es la solución."
  End verb.
End add to.
