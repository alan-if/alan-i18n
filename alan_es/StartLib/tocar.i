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
  tocar = tocar el (obj).

  tocar_con = tocar (obj1) con (obj2)
    Where obj1 IsA thing
      else "Eso no lo puedes tocar."
    And obj2 IsA object
      else "Solo puedes utilizar objetos para tocar."
  tocar_con = tocar (obj1) con el (obj2).
  tocar_con = tocar el (obj1) con (obj2).
  tocar_con = tocar el (obj1) con el (obj2).

Add to every object
  Verb tocar
    Check obj is tocable
      else "Eso es intocable."
    Does
      "Tocas" say the obj. "."
  End verb.

  Verb tocar_con
    When obj1
      Check obj1 is tocable
        else "Eso es intocable."
      And obj1 <> obj2
        else "No tiene sentido tocar algo con si mismo."
    Does
    "Tocas" say the obj1. "con" say the obj2. "."
  End verb.
End add to.
