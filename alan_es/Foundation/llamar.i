-- "llamar.i"

Synonyms
  llama, llamo = llamar.

Syntax
  llamar_a = llamar a (obj)
    Where obj IsA thing
      else "¡No puedes llamar a eso!"
  llamar_a = llamar (obj).

Add to every thing
  Verb llamar_a
    Check obj is not ornamentale else
      If obj is plural
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    Does
      "Llamas a $+1."
  End verb.
End add to.


Syntax
  llamar = llamar.

Verb llamar
  Does
    "Debes especificar a que quieres llamar."
End verb.
