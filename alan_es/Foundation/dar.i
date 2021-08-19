-- "dar.i" <-- "give.i"

Synonyms
  doy, da, dono, dona, donar,
  entrego, entrega, entregar = dar.

Syntax
  dar = dar (obj) 'a' (recip)
    Where obj IsA object
      else "Solo puedes dar objetos."
    And recip IsA container
      else "¡A eso no le puedes dar nada!"
  dar = dar (obj) (recip).
  dar = dar 'a' (recip) (obj).
  dar = dar 'a' (recip) 'el' (obj).

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
      End if.
  End verb.
End add to.
