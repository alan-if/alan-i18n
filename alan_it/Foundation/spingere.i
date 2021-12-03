-- "spingere.i" <- "push.i"

Add to every thing
  Is spingibile.
End add.


Syntax spingere = spingi (ogg)
  Where ogg IsA thing
    else "Non è possibile spingere $+1!"

Add to every object
  Verb spingere
    Check ogg is spingibile
      else "Non puoi spingere $+1!"
    Does
      "Fatto. Hai spinto $+1."
  End verb.
End add.


Syntax spingere_con = spingi (ogg1) con (ogg2)
  Where ogg1 IsA thing
    else "Non è possibile spingere $+1!"
  And ogg2 IsA object
    else "Puoi servirti solo di oggetti per spingere qulacosa!"

Add to every object
  Verb spingere_con
    When ogg1
      Check ogg1 is spingibile
      else "Non puoi spingere $+1!"
      Does
        "Servendoti" say ogg2:prep_DI. "$2 spingi $+1."
  End verb.
End add.
