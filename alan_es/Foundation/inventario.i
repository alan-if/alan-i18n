-- "inventario.i" <-- "invent.i"

Add to every thing
  Is peso 0.
End add to thing.


Add to every actor
  Is peso 50.
End add to actor.

Add to every object
  Is peso 5.
End add to object.



Synonyms
  i, inventario, inv = invent.

Syntax
  invent = invent.

Verb invent
  Does
    -- ------------------
    -- List carried items
    -- ------------------
    Set temp:cnt to count directly in hero, is not puesto.
    If  temp:cnt = 0
      then "No llevas nada." -- @CHECK TANSLATATION!
      else
        "Tienes" -- @CHECK TANSLATTION!
        For each artículo_llevado directly in hero, is not puesto
          do
            Say an artículo_llevado. -- @TANSLATE 'artículo_llevado' ID!
            Decrease temp:cnt.
            Depending on temp:cnt
              = 1 then "y"
              = 0 then "."
              else ","
            End depend.
        End for.
    End if.
    -- ------------------------
    -- List worn clothing items
    -- ------------------------
    -- Don't say anything if the Hero is not wearing anything.
    Set temp:cnt to count directly in hero, is puesto.
    If  temp:cnt <> 0
      then
        "Llevas" -- @CHECK TANSLATTION!
        For each artículo_puesto directly in hero, is puesto
          do
            Say an artículo_puesto.
            Decrease temp:cnt.
            Depending on temp:cnt
              = 1 then "y"
              = 0 then "."
              else ","
            End depend.
        End for.
    End if.
End verb invent.

--------------------------------------------------------------------------------
-- This was the old `llevado` entity container for handling worn items,
-- now replaced by the `puesto` attribute.

-- @NOTE: The previous Limits for wearable items count and their weight
--        went lost in the transition to the new system!

-- The llevado IsA entity
--   Container
--     Limits
--       Count 10 then
--         "No puedes llevar nada más. Debes dejar algo antes."
--       peso 50 then
--         "No puedes llevar más peso. Debes dejar algo antes."
--     Header
--       "Llevas"
--     else
--       ""
-- End the llevado.
