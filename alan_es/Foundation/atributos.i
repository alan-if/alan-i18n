-- "atributos.i"

-- atributos globales para todos los verbos y objetos

-- +---------------------------------------------------------------------------+
-- | ** NOTE ** Most of the original contents of this file haven been moved to |
-- |            the "gramática.i" module in order to separate grammar specific |
-- |            code from library related features. The future of this module  |
-- |            is currently uncertain, for it might be easier to move the few |
-- |            statements herein contained somewhere else.                    |
-- +---------------------------------------------------------------------------+

Add to every actor
  Container
End add to actor.


Every named_actor IsA actor
  Definite Article ""
  Indefinite Article ""
End every named_actor.
