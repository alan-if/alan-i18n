-- berÃ¶r.i

-- ta pÃ¥
-- peta p
-- knna p

Add to every thing
  Is berÃ¶rbar.
End add.


Syntax
  berÃ¶r = berÃ¶r (obj)
    Where obj IsA thing
      else "Du kan inte berÃ¶ra" say the obj. "."
  berÃ¶r = kÃ¤nn pÃ¥ (obj)
    Where obj IsA thing
      else "Du kan inte kÃ¤nna pÃ¥" say the obj. "."
  berÃ¶r = ta pÃ¥ (obj)
    Where obj IsA thing
      else "Du kan inte ta pÃ¥" say the obj. "."

  berÃ¶r_med = berÃ¶r (obj1) med (obj2)
    Where obj1 IsA thing
      else "Du kan inte berÃ¶ra" say the obj. "."
    And obj2 IsA object
      else "Du kan bara anvnda saker att berÃ¶ra med."
  berÃ¶r_med = peta pÃ¥ (obj1) med (obj2)
    Where obj1 IsA thing
      else "Du kan inte peta pÃ¥" say the obj. "."
    And obj2 IsA object
      else "Du kan bara anvÃ¤nda saker fÃ¶r att peta pÃ¥ nÃ¥got."
  berÃ¶r_med = knn p (obj1) med (obj2)
    Where obj1 IsA thing
      else "Du kan inte kÃ¤nna pÃ¥" say the obj. "."
    And obj2 IsA object
      else "Du kan bara anvÃ¤nda saker fÃ¶r att kÃ¤nna pÃ¥ nÃ¥got."
  berÃ¶r_med = ta p (obj1) med (obj2)
    Where obj1 IsA thing
      else "Du kan inte ta pÃ¥" say the obj. "."
    And obj2 IsA object
      else "Du kan bara anvÃ¤nda saker fÃ¶r att ta pÃ¥ nÃ¥got."

Add to every object
  Verb berÃ¶r
    Check obj is berÃ¶rbar
      else "Du kan inte berÃ¶ra det."
    Does
      "Du berÃ¶r" say the obj. "."
  End verb.

  Verb berÃ¶r_with
    When obj1
      Check obj1 Is berÃ¶rbar
        else "Du kan inte berÃ¶ra det."
      And obj1 <> obj2
        else "Det gr inte att berÃ¶ra nÃ¥got med sig sjÃ¤lvt."
      Does
        "Du berÃ¶r" say the obj1. "med" say the obj2. "."
  End verb.
End add.
