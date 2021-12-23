-- "examine.i"

Add to every thing
  Is
    examinable.
    searchable.
  Has xDesc "". -- Shown with 'examine', if not empty string.
End add.

Add to every actor
  Is not searchable.
End add.

----

Synonyms
  x, inspect, 'check' = examine.

Syntax
  examine = examine (obj)*
    Where obj IsA thing
      else "You can't examine that!"

Syntax
  examine = 'look' 'at' (obj)*.

Add to every thing
  Verb examine
    Check obj is examinable
      else "You can't examine" say the obj. "."
    Does
      If xDesc of obj <> "" then
        say xDesc of obj.
      ElsIf obj is scenery then
        If obj is plural
          then say msg:scenery_response_P1_pl.
          else say msg:scenery_response_P1_sg.
        End if.
      else "There is nothing special about $+1."
      End if.
  End verb.
End add.

-- @NOTE: Examining actors doesn't check for 'is scenery' since the assumption
--        is that actors are never scenery. Is there a plausible use case for
--        scenery actors? Should we add the check?

Add to every actor
  Verb examine
    Does after
      If this <> hero
        then
          -- ------------------
          -- List carried items
          -- ------------------
          -- Don't say anything if the actor is not carrying anything.
          Set temp:cnt to count directly in this, is not worn.
          If  temp:cnt <> 0
            then "$+1"
              If this is not plural
                then "is"
                ELSE "are"
              End if. "carrying"
              For each carried_item directly in this, is not worn
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
          -- Don't say anything if the actor is not wearing anything.
          Set temp:cnt to count directly in this, is worn.
          If  temp:cnt <> 0
            then "$+1"
              If this is not plural
                then "is"
                ELSE "are"
              End if. "wearing"
              For each worn_item directly in this, is worn
                do
                  Say an worn_item.
                  Decrease temp:cnt.
                  Depending on temp:cnt
                    = 1 then "and"
                    = 0 then "."
                    ELSE ","
                  End depend.
              End for.
          End if.
      End if.
  End verb examine.
End add to actor.

----

Synonyms
  inside, into = 'in'.

Syntax
  look_in = 'look' 'in' (obj)
    Where obj IsA thing
      else "You can't look inside that."
    And obj IsA container
      else "You can't look inside that."

Add to every object
  Verb look_in
    Check obj is not scenery else
      If obj is plural
        then say msg:scenery_response_P1_pl.
        else say msg:scenery_response_P1_sg.
      End if.
    And obj is examinable
      else "You can't look inside $+1."
    Does
      List obj.
  End verb.
End add.

----

Syntax
  search = search (obj)
    Where obj IsA thing
      else "You can't search that!"

Add to every object
  Verb search
    Check obj is not scenery else
      If obj is plural
        then say msg:scenery_response_P1_pl.
        else say msg:scenery_response_P1_sg.
      End if.
    And obj is searchable
      else "You can't search" say the obj. "."
    Does
      "You find nothing of interest."
  End verb.
End add.
