-- "globali.i" -> global.i

-- To make instance names always be capitalized (e.g. for persons),
-- give the instance a capitalised name in single quotes. Since
-- development version 3.0.29 you don't need another name without the
-- quotes. The compiler converts all player words to lower case before
-- entering them in the dictionary.
--
-- Deprecated:
-- Arun will use the object's leftmost (first) name in the SAY
-- statement and the player will be able to use the uncapitalised name
-- in player commands -- eg:
--
--    The robot IsA actor at spaceship Name 'Floyd' Name floyd


Add to every thing
  Is not plurale.
End add.

-- @NOTE: The 'named_actor' class will probably be removed!
--        See Discussion #54.

Every named_actor IsA actor -- @TRANSLATE CLASS!
  Definite article ""
  Indefinite article ""
End every.

Add to every actor
  Container
End add to actor.
