-- berör.i

-- ta på
-- peta p
-- knna p

Add to every thing
  Is berörbar.
End add.


Syntax
  berör = berör (obj)
    Where obj IsA thing
      else "Du kan inte beröra" say the obj. "."
  berör = känn på (obj)
    Where obj IsA thing
      else "Du kan inte känna på" say the obj. "."
  berör = ta på (obj)
    Where obj IsA thing
      else "Du kan inte ta på" say the obj. "."

  berör_med = berör (obj1) med (obj2)
    Where obj1 IsA thing
      else "Du kan inte beröra" say the obj. "."
    And obj2 IsA object
      else "Du kan bara anvnda saker att beröra med."
  berör_med = peta på (obj1) med (obj2)
    Where obj1 IsA thing
      else "Du kan inte peta på" say the obj. "."
    And obj2 IsA object
      else "Du kan bara använda saker för att peta på något."
  berör_med = knn p (obj1) med (obj2)
    Where obj1 IsA thing
      else "Du kan inte känna på" say the obj. "."
    And obj2 IsA object
      else "Du kan bara använda saker för att känna på något."
  berör_med = ta p (obj1) med (obj2)
    Where obj1 IsA thing
      else "Du kan inte ta på" say the obj. "."
    And obj2 IsA object
      else "Du kan bara använda saker för att ta på något."

Add to every object
  Verb berör
    Check obj is berörbar
      else "Du kan inte beröra det."
    Does
      "Du berör" say the obj. "."
  End verb.

  Verb berör_with
    When obj1
      Check obj1 Is berörbar
        else "Du kan inte beröra det."
      And obj1 <> obj2
        else "Det gr inte att beröra något med sig självt."
      Does
        "Du berör" say the obj1. "med" say the obj2. "."
  End verb.
End add.
