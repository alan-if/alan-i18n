-- undersÃ¶k.i


Add to every thing
  Is
    undersÃ¶kbar.
    sÃ¶kbar.
End add.

Add to every actor
  Is not undersÃ¶kbar.
End add.

----

Synonyms
  inspektera, kontrollera, kolla = undersÃ¶k.

Syntax
  undersÃ¶k = undersÃ¶k (obj) *
    Where obj IsA thing
      else "Du kan inte undersÃ¶ka" Say the obj. "."

Syntax
  undersÃ¶k = 'titta' 'pÃ¥' (obj) *.

Add to every thing
  Verb undersÃ¶k
    Check obj is undersÃ¶kbar
      else "Du kan inte undersÃ¶ka" say the obj. "."
    Does
      "Det verkar inte vara nÃ¥got sÃ¤rskilt med" say the obj. "."
  End verb.
End add.

----

Synonyms
  inside, into = 'i'.

Syntax
  look_in = 'look' 'in' (obj)
    Where obj IsA thing
      else "You can't look inside that."
    And obj IsA container
      else "You can't look inside that."

Add to every object
  Verb look_in
    Check obj is examinable
      else "You can't look inside" say the obj. "."
    Does
      List obj.
  End verb.
End add.

----

Syntax
  search = search (obj)
    Where obj IsA thing
      else "You can't search that!"

Add to every object
  Verb search
    Check obj is searchable
      else "You can't search" say the obj. "."
    Does
      "You find nothing of interest."
  End verb.
End add.
