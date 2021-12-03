﻿-- "mangiare.i" <- "eat.i"

Add to every object
  Is Not commestibile.
     Not potabile.
End add.

Syntax
  mangiare = mangia (ogg)
    Where ogg IsA object
      else "Non è possibile mangiare $+1!" --> @TODO: More explicit message!

  bere = bevi (ogg)
    Where ogg IsA object
      else "Non è possibile bere $+1!" --> @TODO: More explicit message!

Add to every object
  Verb mangiare
    Check ogg is commestibile
      else "$+1 non è commestibile!"
    Does
      Locate ogg at limbo.
      -- In case item was being worn:
      Set indossatore of ogg to nessuno.
      Make ogg not indossato.
      "Mangi $+1."
  End verb.

  Verb bere
    Check ogg is potabile
      else "$+1 non è potabile."
    Does
      Locate ogg at limbo.
      -- In case item was being worn:
      Set indossatore of ogg to nessuno.
      Make ogg not indossato.
      "Bevi $+1."
  End verb.
End add.
