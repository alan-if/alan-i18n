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
  ta, bär, hämta, skaffa, stjäl = tag.


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
      else "Du har redan" say the obj. ". Du har den på dig."
    And obj not in hero
      else "Du har redan" say the obj. "."
    And weight Of obj <=50
      else Say the obj. "är för tung för att lyfta."
    Does
      Locate obj in hero.
      "Tagen."
  End verb.
End add.


Synonyms
  släng, kasta = släpp.

Syntax
  släpp = släpp (obj)*.

Syntax
  lägg_ner = lägg ner (obj)*.

Add to every object
  Verb släpp, lägg_ner
    Check obj in hero
      else "Du har inte" say the obj. "."
    Does
      Locate obj here.
      "Släppt."
  End verb.
End add.


Syntax
  tag_från = 'tag' (obj) 'från' (holder)
    Where obj IsA object
      else "Du kan bara ta saker."
    And holder IsA thing
      else "Du kan inte ta saker från" Say the holder. "!"
    And holder IsA container
      else "Du kan inte ta saker från" Say the holder. "!"

Add to every object
  Verb tag_från
    When obj
      Check obj not in hero
        else "Du har redan" say the obj. "."
      And obj in holder
        else Say the obj. "är inte här."
      Does
        If holder=hero then
          "Du behöver inte ta saker från dig själv!"
        else
          Locate obj in hero.
          "Du tar" say the obj. "."
        End if.
  End verb.
End add.
