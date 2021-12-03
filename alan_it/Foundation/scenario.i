-- "scenario.i" <- "scenery.i"

Every scenario IsA object -- @TRANSLATE CLASS!
  Is not ispezionabile.
     not prendibile.
     not spingibile.
     not toccabile.

  Verb prendere
    -- @NOTE: This will never execute, because sceneries are 'not prendibile'
    --        and will therefore fail the checks! Replacing 'Does only' with
    --        'Check' won't work either, because the checks on the parent
    --        class are executed first! See Discussion #34.
    Does only
      "$+1 non"
      If ogg is not plurale
        then "è importante"
        else "sono importanti"
      End if.
      "ai fini del gioco."
  End verb.

  Verb esaminare
    Does
      If xDesc of ogg <> ""
        then say xDesc of ogg.
        else
          "$+1 non"
          If ogg is not plurale
            then "è importante"
            else "sono importanti"
          End if.
          "ai fini del gioco."
      End if.
  End verb.
End every.
