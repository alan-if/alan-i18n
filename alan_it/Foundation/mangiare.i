-- "mangiare.i" -> eat.i

Add to every object
Is
  Not commestibile.
  Not potabile.
End add.

Syntax
  mangiare = mangia (ogg)
    Where ogg IsA object
      else "Non puoi mangiare" say an ogg. "!"

  bere = bevi (ogg)
    Where ogg IsA object
      else "Non puoi bere" say an ogg. "!"

Add to every object
  Verb mangiare
    Check ogg is commestibile
      else "$+1 non è commestibile!"
    Does
      Locate ogg at limbo.
      -- In case item was being worn:
      Set indossatore of ogg to nessuno.
      Make ogg not indossato.
      "Mangi" say the ogg. "."
  End verb.

  Verb bere
    Check ogg is potabile
      else "$+1 non è potabile."
    Does
      Locate ogg at limbo.
      -- In case item was being worn:
      Set indossatore of ogg to nessuno.
      Make ogg not indossato.
      "Bevi" say the ogg. "."
  End verb.
End add.
