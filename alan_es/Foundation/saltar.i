-- "saltar.i"

Synonyms
  salto, salta = saltar.

Syntax
  saltar_en = saltar en (obj)
    Where obj IsA thing
      else "¡No puedes saltar sobre eso!"
  saltar_en = saltar sobre (obj).
  saltar_en = saltar (obj).

Add to every thing
  Verb saltar_en
    Does
      "Saltas sobre" say the obj. "."
  End verb.
End add to.


Syntax
  saltar = saltar.

Verb saltar
  Does
    "Saltas arriba y abajo."
End verb.
