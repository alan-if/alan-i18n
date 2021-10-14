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
    Does
      "Llamas a" say the obj. "."
  End verb.
End add to.


Syntax
  llamar = llamar.

Verb llamar
  Does
    "Debes especificar a que quieres llamar."
End verb.
