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
          If this is plural
            then Say msg:scenery_response_P1_pl.
            else Say msg:scenery_response_P1_sg.
          End if.
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
      If this is plural
        then Say msg:scenery_response_P1_pl.
        else Say msg:scenery_response_P1_sg.
      End if.
  End verb.

  -- @TODO: Add other verbs with compatible syntaxes.
End every.
