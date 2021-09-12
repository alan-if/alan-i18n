-- attackera.i

-- skjut, skjut pÃ¥

-- thoni56: Changed all "with that" and similar to "with" Say...


Add to every thing
  Is not beskjutbar.
End add.

Add to every object
  Is
    Not vapen.
    Not beskjutbar.
End add.


Synonyms
  dda, sl = attackera.
  avfyra = skjut.


Syntax
  attackera = attackera (act)
    Where act IsA thing
      else "Du kan inte attackera" say the act. "."

Add to every thing
  Verb attackera
    Does
      "VÃ¥ld Ã¤r sÃ¤llan svaret."
  End verb.
End add.


Syntax
  attackera_med = attackera (act) med (obj)
    Where act IsA thing
      else "Du kan inte attackera" say the act. "."
    And obj IsA object
      else "Du kan inte attackera nÃ¥got med" say the obj. "!"

Add to every thing
  Verb attackera_med
    When obj
      Check obj in hero
        else "Du har inte" say the obj. "att attackera med."
      And obj is vapen
        else "Det Ã¤r inte sÃ¥ smart att attackera nÃ¥got med" say the obj. "!"
      Does
        "VÃ¥ld Ã¤r sÃ¤llan svaret."
  End verb.
End add.


Syntax
  skjut = skjut (obj)
    Where obj IsA thing
      else "Du kan inte skjuta pÃ¥" say the obj. "."
  skjut = skjut pÃ¥ (obj).


Add to every thing
  Verb skjut
    Does
      If obj is beskjutbar then
        "Du mÃ¥ste sÃ¤ga vad du vill skjuta pÃ¥."
      else
        "Du mÃ¥ste sÃ¤ga vad du vill skjuta" say the obj. "med."
      End if.
  End verb.
End add.


Syntax
  skjut_at = skjut (obj) p (act)
    Where obj IsA object
      else "Du kan inte skjuta med" say the obj. "."
    And act IsA thing
      else "Du kan inte skjuta pÃ¥" say the act. "."

  skjut_with = skjut (act) med (obj)
    Where obj IsA object
      else "Du kan inte skjuta med" say the obj. "."
    And act IsA thing
      else "Du kan inte skjuta pÃ¥" say the act. "."

Add to every thing
  Verb skjut_at
    When obj
      Check obj in hero
        else "Du har inte det."
      And obj is beskjutbar
        else "Du kan inte skjuta nÃ¥got med" say the obj. "."
      Does
        "VÃ¥ld Ã¤r sÃ¤llan svaret."
  End verb.

  Verb skjut_with
    When obj
      Check obj in hero
        else "Du har inte" say the obj. "."
      And obj is beskjutbar
        else "Du kan inte skjuta nÃ¥got med" say the obj. "."
      Does
        "VÃ¥ld Ã¤r sÃ¤llan svaret."
  End verb.
End add.
