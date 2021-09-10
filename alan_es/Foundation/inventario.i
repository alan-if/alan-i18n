-- "inventario.i" <-- "invent.i"

Add to every thing
  Is peso 0.
End add to thing.


Add to every actor
  Is peso 50.
End add to actor.

Add to every object
  Is peso 5.
End add to object.



Synonyms
  i, inventario, inv = invent.

Syntax
  invent = invent.

Verb invent
  Does
    List hero.
    List llevado.
End Verb invent.


The llevado IsA entity
  Container
    Limits
      Count 10 then
        "No puedes llevar nada más. Debes dejar algo antes."
      peso 50 then
        "No puedes llevar más peso. Debes dejar algo antes."
    Header
      "Llevas"
    else
      ""
End the llevado.
