-- "dar.i" <-- "give.i"

Synonyms
  doy, da, dono, dona, donar,
  entrego, entrega, entregar = dar.

Syntax
  dar = dar (obj) a (recip)
    Where obj IsA object
      else "Solo puedes dar objetos."
    And recip IsA container
      else "¡A eso no le puedes dar nada!"
  dar = dar (obj) (recip).

Add to every object
  Verb dar
    When obj
      Check obj in hero
        else "No tienes" say the obj. "."
    Does
      If recip=hero then
        "¡Ya tienes" say the obj. "!"
      else
        "Das" say the obj. "a" say the recip. "."
        Locate obj in recip.
        -- In case item was being worn:
        Set portador of obj to nadie.
        Make obj not puesto.
      End if.
  End verb.
End add to.
