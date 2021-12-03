-- "esaminare.i" <- "examine.i"

Add to every thing
  Is
    esaminabile.    --> examinable
    ispezionabile.  --> searchable
  Has xDesc "". -- Shown with 'examine', if not empty string.
End add.

Add to every actor
  Is not ispezionabile.
End add.

----

Synonyms descrivi, osserva, X = esamina.

Syntax esaminare = esamina (ogg) *
  Where ogg IsA thing
    else "$+1 non si"
    If ogg is plurale
      then "possono"
      else "può"
    End if. "esaminare!"
  esaminare = guarda (ogg) *.


Add to every thing
  Verb esaminare
    Check ogg is esaminabile
      else "Non puoi esaminare $+1!"
    Does
      If ogg:xDesc <> ""
        then say ogg:xDesc.
        else "Non noti nulla di particolare riguardo $+1."
      End if.
  End verb.
End add.

Add to every actor
  Verb esaminare
    Does after
      If this <> hero
        then
          -- ------------------
          -- List carried items
          -- ------------------
          -- Don't say anything if the actor is not carrying anything.
          Set temp:cnt to count directly in this, is not indossato.
          If  temp:cnt <> 0
            then "$+1 trasporta"
              If this is plurale
                then "$$no"
              End if.
              For each ogg_trasportato directly in this, is not indossato
                do
                  Say an ogg_trasportato.
                  Decrease temp:cnt.
                  Depending on temp:cnt
                    = 1 then "e"
                    = 0 then "."
                    else ","
                  End depend.
              End for.
          End if.
          -- ------------------------
          -- List worn clothing items
          -- ------------------------
          -- Don't say anything if the actor is not wearing anything.
          Set temp:cnt to count directly in this, is indossato.
          If  temp:cnt <> 0
            then "$+1 indossa"
              If this is plurale
                then "$$no"
              End if.
              For each ogg_indossato directly in this, is indossato
                do
                  Say an ogg_indossato.
                  Decrease temp:cnt.
                  Depending on temp:cnt
                    = 1 then "e"
                    = 0 then "."
                    ELSE ","
                  End depend.
              End for.
          End if.
      End if.
  End verb esaminare.
End add to actor.

----

-- Synonyms dentro = 'in'. --> already defined in 'grammatica.i'

Syntax guardare_dentro = guarda 'in' (ogg)
  Where ogg IsA thing
    else "È impossibile guardare"
          say ogg:prep_IN. "$+1."
  And ogg IsA container
    else "È impossibile guardare"
          say ogg:prep_IN. "$+1."

Add to every object
  Verb guardare_dentro
    Check ogg is esaminabile
      else "Non è possibile guardare"
           say ogg:prep_IN. "$+1."
    Does
      List ogg.
  End verb.
End add.

----

Synonyms perquisisci = ispeziona.

Syntax ispezionare = ispeziona (ogg)
  Where ogg IsA thing
    else "È impossibile ispezionare $+1!"

Add to every object
  Verb ispezionare
    Check ogg is ispezionabile
      else "È impossibile ispezionare $+1!"
    Does
      "L'ispezione non ha rivelato nulla di interessante."
  End verb.
End add.
