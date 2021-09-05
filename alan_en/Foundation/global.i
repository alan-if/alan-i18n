-- "global.i"

-- To make instance names always be capitalized (e.g. for persons),
-- give the instance a capitalised name in single quotes. Since
-- development version 3.0.29 you don't need another name without the
-- quotes. The compiler converts all player words to lower case before
-- entering them in the dictionary.

Add to every entity
  Is not plural.
End add.

Every named_actor IsA actor
  Definite article ""
  Indefinite article ""
End every.

Add to every actor
  Container
End add to actor.
