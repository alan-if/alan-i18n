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
    Check obj is not ornamentale else
      If obj is plural
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    Does
      "Saltas sobre $+1."
  End verb.
End add to.


Syntax
  saltar = saltar.

Verb saltar
  Does
    "Saltas arriba y abajo."
End verb.
