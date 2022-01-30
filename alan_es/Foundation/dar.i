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
      Check obj is not ornamentale else
        If obj is plural
          then say msg:ornamentale_P1_pl.
          else say msg:ornamentale_P1_sg.
        End if.
      And recip is not ornamentale else
        If recip is plural
          then say msg:ornamentale_P2_pl.
          else say msg:ornamentale_P2_sg.
        End if.
      And obj in hero
        else say msg:no_tienes_P1.
    Does
      If recip=hero then
        "¡Ya tienes" say the obj. "!"
      else
        "Das" say the obj. "a" say the recip. "."
        Locate obj in recip.
        -- Check that operation succeeded
        -- (could fail due to TAKING clause):
        If obj directly in recip
          then
            -- In case item was being worn:
            Set portador of obj to nadie.
            Make obj not puesto.
        End if.
      End if.
  End verb.
End add to.
