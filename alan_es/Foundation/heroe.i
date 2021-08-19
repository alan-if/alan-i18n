-- "heroe.i" <-- "hero.i"

Synonyms
  mi, me, yo, heroe, héroe = hero.

The hero IsA actor
  Container
    Limits
      Count 10 then
        "No puedes llevar más. Debes dejar algo antes."
      peso 50 then
        "No puedes llevar más peso. Debes dejar algo antes."
    Header
      "Tienes"
    else
      "No tienes nada."
End the hero.
