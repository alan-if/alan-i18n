﻿-- "comer.i" <-- "eat.i"

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
    Check obj is not ornamentale else
      If obj is plural
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    And obj is comestible
      else "¡No te puedes comer es" say obj:adj_suf. "!"
    Does
      Locate obj at Limbo.
      -- In case item was being worn:
      Set portador of obj to nadie.
      Make obj not puesto.
      "Te comes" say the obj. "."
  End verb.

  Verb beber
    Check obj is not ornamentale else
      If obj is plural
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    And obj is bebible
      else "Eso no se puede beber."
    Does
      Locate obj at Limbo.
      -- In case item was being worn:
      Set portador of obj to nadie.
      Make obj not puesto.
      "Te bebes" say the obj. "."
  End verb.
End add.
