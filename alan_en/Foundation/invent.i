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
    -- ------------------
    -- List carried items
    -- ------------------
    Set temp:cnt to count directly in hero, is not worn.
    If  temp:cnt = 0
      then "You are empty-handed."
      else
        "You are carrying"
        For each carried_item directly in hero, is not worn
          do
            Say an carried_item.
            Decrease temp:cnt.
            Depending on temp:cnt
              = 1 then "and"
              = 0 then "."
              else ","
            End depend.
        End for.
    End if.
    -- ------------------------
    -- List worn clothing items
    -- ------------------------
    -- Don't say anything if the Hero is not wearing anything.
    Set temp:cnt to count directly in hero, is worn.
    If  temp:cnt <> 0
      then
        "You are wearing"
        For each worn_item directly in hero, is worn
          do
            Say an worn_item.
            Decrease temp:cnt.
            Depending on temp:cnt
              = 1 then "and"
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
--         "You can't wear anything more. You have to remove something first."
--       weight 50 then
--           "You can't wear anything more. You have to remove something first."
--     Header
--       "You are wearing"
--     else ""
-- End the.
