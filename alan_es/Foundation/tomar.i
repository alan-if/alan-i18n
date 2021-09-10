-- "tomar.i" <-- "take.i"

Add to every thing
  Is inanimado.
End add to thing.

Add to every object
  Is tomable.
End add to object.

Add to every actor
  Is not inanimado.
End add to actor.

Synonyms
  toma, tomo, agarro, agarra, agarrar, cojo, coge, coger,
  recojo, recoge, recoger = tomar.

  deja, dejo, descarto, descarta, descartar, suelto,
  suelta, soltar = dejar.

Syntax
  tomar = tomar (obj) *
    Where obj IsA object
      else "¡No puedes tomar" say the obj. "!"
  tomar = tomar 'el' (obj).


Add to every object
  Verb tomar
    Check obj is tomable
      else "¡No puedes tomar" say the obj. "!"
    And obj not in llevado
      else "Ya lo tienes - lo llevas puesto."
    And obj not in hero
      else "Ya lo tienes."
    And peso of obj <=50
      else "Es demasiado pesado."
    Does
      Locate obj in hero.
      "Tomas" say the obj. "."
  End verb.
End add to.


Syntax
  dejar = dejar (obj) *.
  dejar = dejar 'el' (obj) *.


Add to every object
  Verb dejar
    Check obj in hero
      else "No lo llevas."
    Does
      Locate obj here.
      "Dejas" say the obj. "."
  End verb.
End add to.


Syntax
  tomar_de = 'tomar' (obj) 'de' (cont)
    Where obj IsA object
      else "Solo puedes tomar objetos."
    And cont IsA thing
      else "¡No puedes tomar objetos de eso!"
    And cont IsA container
      else "¡No puedes tomar objetos de eso!"

Add to every object
  Verb tomar_de
    When obj
      Check obj not in hero
        else "Ya llevas" say the obj. "."
      And obj in cont
        else say the obj. "no está."
    Does
      If cont=hero then
        "¡No necesitas tomar cosas de ti mismo!"
      else
        Locate obj in hero.
        "Tomas" say the obj. "."
      End if.
  End verb.
End add.
