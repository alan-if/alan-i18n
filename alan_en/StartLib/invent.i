-- "invent.i"

Add to every thing
  Has weight 0.
End add.


Add to every actor
  Has weight 50.
End add.

Add to every object
  Has weight 5.
End add.


Synonyms
  i, inventory = invent.

Syntax
  invent = invent.

Verb invent
  Does
    List hero.
    List worn.
End verb.


The worn IsA entity
  Container
    Limits
      Count 10 then
        "You can't wear anything more. You have to remove something first."
      weight 50 then
          "You can't wear anything more. You have to remove something first."
    Header
      "You are wearing"
    else ""
End the.
