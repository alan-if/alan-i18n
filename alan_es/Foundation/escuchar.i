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
    Check obj is not ornamentale else
      If obj is plural
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    Does
      "Escuchas $+1."
  End verb.
End add to.


Syntax
  escuchar = escuchar.

Verb escuchar
  Does
    "No oyes nada inusual."
End verb.
