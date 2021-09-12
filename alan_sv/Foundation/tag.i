-- tag.i


Add to every thing
  Is inanimate.
End add.

Add to every object
  Is tagbar.
End add.

Add to every actor
  Is not inanimate.
End add.


Synonyms
  ta, bÃ¤r, hÃ¤mta, skaffa, stjÃ¤l = tag.


Syntax
  tag = tag (obj) *
    Where obj IsA object
      else "Du kan inte ta" say the obj. "med dig!"

Syntax
  ta_upp1 = tag upp (obj)*
    Where obj IsA object
      else "Du kan inte ta" say the obj. "med dig!"

Add to every object
  Verb tag, ta_upp1
    Check obj is tagbar
      else "Du kan inte ta" say the obj. "."
    And obj not in worn
      else "Du har redan" say the obj. ". Du har den pÃ¥ dig."
    And obj not in hero
      else "Du har redan" say the obj. "."
    And weight Of obj <=50
      else Say the obj. "Ã¤r fÃ¶r tung fÃ¶r att lyfta."
    Does
      Locate obj in hero.
      "Tagen."
  End verb.
End add.


Synonyms
  slÃ¤ng, kasta = slÃ¤pp.

Syntax
  slÃ¤pp = slÃ¤pp (obj)*.

Syntax
  lÃ¤gg_ner = lÃ¤gg ner (obj)*.

Add to every object
  Verb slÃ¤pp, lÃ¤gg_ner
    Check obj in hero
      else "Du har inte" say the obj. "."
    Does
      Locate obj here.
      "SlÃ¤ppt."
  End verb.
End add.


Syntax
  tag_frÃ¥n = 'tag' (obj) 'frÃ¥n' (holder)
    Where obj IsA object
      else "Du kan bara ta saker."
    And holder IsA thing
      else "Du kan inte ta saker frÃ¥n" Say the holder. "!"
    And holder IsA container
      else "Du kan inte ta saker frÃ¥n" Say the holder. "!"

Add to every object
  Verb tag_frÃ¥n
    When obj
      Check obj not in hero
        else "Du har redan" say the obj. "."
      And obj in holder
        else Say the obj. "Ã¤r inte hÃ¤r."
      Does
        If holder=hero then
          "Du behÃ¶ver inte ta saker frÃ¥n dig sjÃ¤lv!"
        else
          Locate obj in hero.
          "Du tar" say the obj. "."
        End if.
  End verb.
End add.
