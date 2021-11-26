-- "inventario.i" -> invent.i

Add to every thing
  Has peso 0.
End add.


Add to every actor
  Has peso 50.
End add.

Add to every object
  Has peso 5.
End add.


Synonyms inv = inventario.

Syntax inventariare = inventario.

Verb inventariare
  Does
    -- ------------------
    -- List carried items
    -- ------------------
    Set temp:cnt to count directly in hero, is not indossato.
    If  temp:cnt = 0
      then "Sei a mani vuote."
      else
        "Stai trasportando"
        For each ogg_trasportato directly in hero, is not indossato
          do
            Say an ogg_trasportato.
            Decrease temp:cnt.
            Depending on temp:cnt
              = 1 then "e"
              = 0 then "."
              else ","
            End depend.
        End for.
    End if.
    -- ------------------------
    -- List worn clothing items
    -- ------------------------
    -- Don't say anything if the Hero is not wearing anything.
    Set temp:cnt to count directly in hero, is indossato.
    If  temp:cnt <> 0
      then
        "Stai indossando"
        For each ogg_indossato directly in hero, is indossato
          do
            Say an ogg_indossato.
            Decrease temp:cnt.
            Depending on temp:cnt
              = 1 then "e"
              = 0 then "."
              else ","
            End depend.
        End for.
    End if.
End verb.


--------------------------------------------------------------------------------
-- This was the old `worn` entity container, now replaced with an attribute.

-- @NOTE: The previous Limits for wearable items count and their weight went
--        lost in the transition to the new system!

-- The worn IsA entity
--   Container
--     Limits
--       Count 10 then
--         "Hai raggiunto il numero massimo di capi indossabili.
--          Dovresti toglierti qualcosa prima."
--       peso 50 then
--         "Hai raggiunto il peso massimo di capi indossabili.
--          Dovresti toglierti qualcosa prima."
--     Header
--       "Stai indossando"
--     else ""
-- End the.
