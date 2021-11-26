-- "bussare.i" -> knock.i

Syntax
  bussare_a = bussa a (ogg)
    Where ogg IsA thing
      else "You can't knock on that!" -- @TRANSLATE!

Add to every thing
  Verb bussare_a
    Does
      "Bussi" SAY ogg:prep_A. say the ogg. "ma non succedde nulla."
  End verb.
End add.

-- @NOTE: 'bussare'   --> 'bussare_errore'?
--        'bussare_a' --> 'bussare'?
Syntax
  bussare = bussa.

Verb bussare
  Does
  --"You need to specify what you want to knock on."
    "Per bussare a qualcosa, usa BUSSA A OGGETTO."
End verb.
