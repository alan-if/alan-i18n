-- "scenario.i" -> scenery.i

Every scenery IsA object -- @TRANSLATE CLASS!
  Is
    Not ispezionabile.
    Not prendibile.
    Not spingibile.
    Not toccabile.

  Verb prendere
    Does only
      Say the ogg. "non"
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
          Say the ogg. "non"
          If ogg is not plurale
            then "è importante"
            else "sono importanti"
          End if.
          "ai fini del gioco."
      End if.
  End verb.

End every.
