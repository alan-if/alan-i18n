-- "escuchar.i" <-- "listen.i"

Synonyms
  escucha, escucho,
  oye, oigo, oir = escuchar.

Syntax
  escuchar_el = escuchar el (obj)
    Where obj IsA thing
      else "¡No puedes escuchar eso!"
  escuchar_el = escuchar (obj).

Add to every thing
  Verb escuchar_el
    Does
      "Escuchas" say the obj. "."
  End verb.
End add to.


Syntax
  escuchar = escuchar.

Verb escuchar
  Does
    "No oyes nada inusual."
End verb.
