-- undersök.i


Add to every thing
  Is
    undersökbar.
    sökbar.
End add.

Add to every actor
  Is not undersökbar.
End add.

----

Synonyms
  inspektera, kontrollera, kolla = undersök.

Syntax
  undersök = undersök (obj) *
    Where obj IsA thing
      else "Du kan inte undersöka" Say the obj. "."

Syntax
  undersök = 'titta' 'på' (obj) *.

Add to every thing
  Verb undersök
    Check obj is undersökbar
      else "Du kan inte undersöka" say the obj. "."
    Does
      "Det verkar inte vara något särskilt med" say the obj. "."
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
