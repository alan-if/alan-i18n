-- "indossare.i" <- "wear.i"

Add to every object
  Is not indossabile.
     not indossato.
  Has indossatore nessuno. -- dummy actor = unworn state. (see 'persone.i')
End add.

-- @NOTE: Alan StdLib Italian:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--    SYNTAX  indossa = indossa (ogg)
--            indossa = mettiti (ogg).
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Syntax
  indossare = indossa (ogg)
    Where ogg IsA object
      else "Non è possibile indossare $+1!"
  indossare = mettiti (ogg).

Add to every object
  Verb indossare
    Check ogg is indossabile
      else "$+1 non"
           If ogg is not plurale
             then "è"
             else "sono"
           End if. "indossabil$$"
           If ogg is not plurale
             then "e"
             else "i"
           End if. "."
    And indossatore of ogg <> hero
      else "Indossi già $+1!"
    And ogg is prendibile
      else "Non ti è possible prendere $+1!"
    And ogg in hero
      else "Non possiedi $+1!"
    Does
      Set indossatore of ogg to hero.
      Make ogg indossato.
      "Fatto. Ora indossi $+1."
  End verb.
End add.


-- @NOTE: Alan StdLib Italian:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--    SYNTAX  togliti = togliti (ogg)
--            togliti = levati (ogg).
--            togliti = sfilati (ogg).
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Syntax
  togliersi = togliti (ogg)
    Where ogg IsA object
      else "$+1 non"
       If ogg is not plurale
         then "è"
         else "sono"
       End if. "indossabil$$"
       If ogg is not plurale
         then "e"
         else "i"
       End if. "."
  togliersi = levati (ogg).
  togliersi = sfilati (ogg).

Add to every object
  Verb togliersi
    Check indossatore of ogg = hero
      else "Non indossi $+1!"
    Does
      Set indossatore of ogg to nessuno.
      Make ogg not indossato.
      "Fatto. Ti sei sfilato $+1."
  End verb.
End add.


-- @NOTE: Alan StdLib Italian:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--    SYNTAX spogliati = spogliati.
--    SYNONYMS svestiti = spogliati.
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Synonyms svestiti = spogliati.

Syntax spogliarsi = spogliati.

Verb spogliarsi
  Does

    If Count in hero, IsA object, is indossato > 0 then
      For each ogg_indossato in hero, IsA object, is indossato do
        Set indossatore of ogg_indossato to nessuno.
        make ogg_indossato not indossato.
      End for.
      "Fatto, hai rimosso tutto ciò che indossavi."
    else
      "Ma non stai indossando nulla!"
    End if.
End verb.
