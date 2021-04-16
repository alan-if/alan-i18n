-- ge.i


Syntax
  ge = 'ge' (obj) 'till' (recip)
    Where obj IsA object
      else "Du kan bara ge bort saker."
    And recip IsA container
      else "Du kan inte ge saker till" say the recip. "!"
  ge = ge (recip) (obj).

Add to every object
  Verb ge
    When obj
      Check obj in hero
        else "Du har inte" say the obj. "."
    Does
      If recip=hero then
        "Snällt! Att ge" say the obj. "till dig själv..."
      else
        "Du ger" say the obj. "till" say the recip. "."
        Locate obj in recip.
      End if.
  End verb.
End add.
