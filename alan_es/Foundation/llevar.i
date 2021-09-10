-- "llevar.i" <-- "wear.i"

Add to every object
  Is not llevable.
End add to object.

Synonyms
  lleva, llevo, ponerme, ponerse, ponte = llevar.
Syntax
  llevar = llevar (obj)
    Where obj IsA object
      else "No puedes llevar eso."
  llevar = llevar el (obj).

Add to every object
  Verb llevar
    Check obj is llevable
      else "No puedes llevar" say the obj. "."
    And obj not in llevado
      else "Ya llevas" say the obj. "."
    And obj is tomable
      else "No puedes tomar" say the obj.
    Does
      If obj not in hero then
        Locate obj in hero.
        "(tomas" say the obj. ".)$n"
      End if.
      Locate obj in llevado.
      "Te pones" say the obj. "."
    End verb.
End add to.

Synonyms
  quita, quito, quitarme, quitarse, quitate = quitar.

Syntax
  quitar = quitar (obj)
    Where obj IsA object
      else "No te puedes quitar eso."
  quitar = quitar el (obj).

Add to every object
  Verb quitar
    Check obj in llevado
      else "No llevas" say the obj. "."
    Does
      Locate obj in hero.
      "Te quitas" say the obj. "."
    End verb.
End add to.


Synonyms
  desnudo, desnuda, desnudarme, desnudate, desnudarse = desnudar.

Syntax desnudar = desnudar.

Add to every object
  Verb desnudar
    Does
      If count in llevado, IsA thing > 0 then
        Empty llevado in hero.
        "Te quitas todo lo que llevabas puesto."
      else
        "No llevas nada que puedas quitarte."
      End if.
    End verb.
End add to.
