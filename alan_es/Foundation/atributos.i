-- "atributos.i"

-- atributos globales para todos los verbos y objetos

Synonyms
  él, la, los, las = el.

  eso, esos, esa, esas, ello,
  aquello, aquella, aquellos, aquellas, lo = it.

  todo, todos, toda, todas = all.

Add to every thing  -- object en pALANte 0.1

  Is not femenina.
  Is not plural.

  Has term_n "".
  Has term_s "".
  Has ser "".

  Definite Article
    If this is femenina
      then
        "la"
        If this is plural then
          "$$s"
        End if.
      else
        If this is plural
          then
            "los"
          else
            "el"
        End if.
    End if.

  Indefinite Article
    "un"
    If this is femenina
      then
        "$$a"
        If this is plural
          then
          "$$s"
        End if.
    elsIf this is plural
      then "$$os"
    End if.

End add to.

Every named_actor IsA actor
  Definite Article ""
  Indefinite Article ""
End every named_actor.

-- evento que inicializa las terminaciones de los objetos
-- y palabras como 'son' o 'es'
-- No olvidar llamarlo en la sección "start",
-- por ejemplo con el comando:
-- "  schedule ini_terms at limbo after 0. "


Event ini_terms
  For each o IsA object do
    If ser of o = "" then
      If o is plural then
        Set ser of o to "son".
      else
        Set ser of o to "es".
      End if.
    End if.
    If term_n of o = "" then
      If o is plural then
        Set term_n of o to "$$n".
      End if.
    End if.
    If term_s of o = "" then
      If o is femenina then
        If o is plural then
          Set term_s of o to "$$as".
        else
          Set term_s of o to "$$a".
        End if.
      else
        If o is plural then
          Set term_s of o to "$$os".
        else
          Set term_s of o to "$$o".
        End if.
      End if.
    End if.
  End for.
End event.
