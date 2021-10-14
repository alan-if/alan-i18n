-- "escuchar.i" <-- "listen.i"

Synonyms
  escucha, escucho,
  oye, oigo, oir = escuchar.

Syntax
  escuchar_el = escuchar (obj)
    Where obj IsA thing
      else "¡No puedes escuchar eso!"

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
