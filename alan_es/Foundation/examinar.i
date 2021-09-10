-- "examinar.i" <-- "examine.i"

Add to every thing
  Is
    examinable.
    buscable.
End add to thing.

Add to every actor
  Is not buscable.
End add to actor.

----

Synonyms
  x, ex, examina, examino, estudio, estudia, estudiar = examinar.

Syntax
  examinar = examinar (obj) *
    Where obj IsA thing
      else "¡No puedes examinar" say the obj. "!"
  examinar = examinar el (obj) *.

Add to every thing
  Verb examinar
    Check obj is examinable
      else "No puedes examinar" say the obj. "."
    Does
      "No hay nada particular acerca de" say the obj. "."
  End verb.
End add to.


----
Synonyms
  veo, ve, ver, m, l, 'look' = mirar.

Syntax
  mirar = mirar.

Verb mirar
  Does
    Look.
End verb.

Syntax
  mirar_en = 'mirar' 'en' (obj)
    Where obj IsA thing
      else "No puedes mirar dentro de" say the obj. "."
    And obj IsA container
      else "No puedes mirar dentro de" say the obj. "."
  mirar_en = mirar dentro (obj).
  mirar_en = mirar dentro de (obj).
  mirar_en = mirar (obj).

Add to every object
  Verb mirar_en
    Check obj is examinable
      else "No puedes mirar en" say the obj. "."
    Does
      List obj.
  End verb.
End add to.


----

Syntax
  buscar = buscar (obj)
    Where obj IsA thing
      else "¡No puedes buscar en eso!"
  buscar = buscar en (obj).
  buscar = buscar dentro (obj).
  buscar = buscar dentro de (obj).

Add to every object
  Verb buscar
    Check obj is buscable
      else "No puedes buscar en" say the obj. "."
    Does
      "No encuentras nada de interés."
  End verb.
End add to.
