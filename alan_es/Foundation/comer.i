-- "comer.i" <-- "eat.i"

Add to every object
Is
  Not comestible.
  Not bebible.
End add to object.

Synonyms
  come, como,
  papeo, papea, papear,
  devoro, devora, devorar,
  zampo, zampa, zampar,
  trago, traga, tragar,
  consumo, consume, consumir,
  engullo, engulle, engullir = comer.
  bebe, bebo = beber.

Syntax
  comer = comer (obj)
    Where obj IsA object
      else "¡No te puedes comer" say an obj. "!"

  beber = beber (obj)
    Where obj IsA object
      else "¡No puedes beber" say an obj. "!"

Add to every object
  Verb comer
    Check obj is comestible
      else "¡No te puedes comer eso!"
    Does
      Locate obj at Limbo.
      "Te comes" say the obj. "."
  End verb.

  Verb beber
    Check obj is bebible
      else "Eso no se puede beber."
    Does
      Locate obj at Limbo.
      "Te bebes" say the obj. "."
  End verb.
End add.
