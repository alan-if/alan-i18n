-- "lanzar.i" <-- "throw.i"

Synonyms
  lanzo, lanza,
  tiro, tira, tirar = lanzar.

Syntax
  lanzar = lanzar (obj) *
    Where obj IsA object
      else "Solo puedes lanzar objetos."

Add to every object
  Verb lanzar
    Check obj in hero
      else "¡No tienes" say the obj. "!"
    Does
      -- @CHECK: Doesn't seem right! (lanzaro|lanzara|lanzaros|lanzaras)???
      --         Maybe: "No puedes lanzarL" --> lanzarLO, lanzarLA ...
      "No puedes lanzar" say obj:adj_suf.
      "muy lejos," say the obj.
      "acaba" say obj:verb_suf. "en el suelo."
      Locate obj here.
      -- In case item was being worn:
      Set portador of obj to nadie.
      Make obj not puesto.
    End verb.
End add to.


Syntax
  lanzar_a = lanzar (obj1) a (obj2)
    Where obj1 IsA object
      else "Solo puedes lanzar objetos."
    And obj2 IsA thing
      else "No puedes lanzar nada contra eso."
  lanzar_a = lanzar (obj1) (obj2).
  lanzar_a = lanzar (obj1) contra (obj2).


Add to every object
  Verb lanzar_a
    When obj1
      Check obj1 in hero
        else "¡No tienes" say the obj1. "!"
      And obj2 not in hero
        else "¡Tú llevas" say the obj2. "!"
      And obj2 <> hero
        else "No puedes lanzar" say the obj1. "contra ti mismo."
    Does
      Say The obj1. "rebota" say obj1:verb_suf. "inocentemente en"
      Say The obj2. "y acaba" say obj1:verb_suf. "en el suelo."
      Locate obj1 here.
      -- In case item was being worn:
      Set portador of obj1 to nadie.
      Make obj1 not puesto.
    End verb.
End add to.


Syntax
  lanzar_en = lanzar (obj1) en (obj2)
    Where obj1 IsA object
      else "No seas así."
    And obj2 IsA container
      else "No puedes lanzar nada en eso."

Add to every object
  Verb lanzar_en
    When obj1
      Check obj1 in hero
        else "¡No tienes" say the obj1. "!"
      And obj1 <> obj2
        else "¡Ese sería un gran truco!"
      And obj2 <> hero
        else "¡No puedes meterte" say the obj1. "!"
    Does
      Locate obj1 in obj2.
      -- Check that operation succeeded
      -- (could fail due to TAKING clause):
      If obj1 directly in obj2
        then
          -- In case item was being worn:
          Set portador of obj1 to nadie.
          Make obj1 not puesto.
          "Hecho."
      End if.
    End verb.
End add.
