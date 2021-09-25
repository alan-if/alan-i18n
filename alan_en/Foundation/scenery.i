-- "scenery.i"

Every scenery IsA object
  Is
    Not searchable.
    Not takeable.
    Not pushable.
    Not touchable.

  Verb examine
    Does only
      If xDesc of obj <> ""
        then say xDesc of obj.
        else
          Say "Forget $+1,".
          If this is not plural
            then "it's"
            else "they're"
          End if.
          "not important."
      End if.
  End verb.

  -- Block verbs and deter player
  -- from attempting other actions...

  Verb take
    -- @NOTE: This will never execute, because sceneries are 'not takeable'
    --        and will therefore fail the checks! Replacing 'Does only' with
    --        'Check' won't work either, because the checks on the parent
    --        class are executed first!
    Does only
      Say "Forget $+1,".
      If this is not plural
        then "it's"
        else "they're"
      End if.
      "not important."
  End verb.

  -- @TODO: Add other verbs with compatible syntaxes.
End every.
