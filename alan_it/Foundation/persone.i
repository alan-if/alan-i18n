-- "persone.i" <- "people.i"


-- Classi per le persone

Every persona IsA actor
  Has not nome_proprio. -- Se ha nome proprio si sopprime l'aticolo.
  Description
    If this has not nome_proprio then
      "Qui"
      If this is not plurale
        then "c'è"
        else "ci sono"
      End if.
      Say an this. "."
    else
      Say this.
      If this is not plurale
        then "è"
        else "sono"
      End if. "qui."
    End if.
End every.

Every maschio IsA persona
  Is not femminile.
  Has articolo "il".
  Pronoun lui
End every.

Every femmina IsA persona
  Is femminile.
  Has articolo "la".
  Pronoun lei
End every.

The nessuno IsA actor at limbo
  -- Dummy actor used to indicate items not being worn, etc.
End the.
