-- "meta_partita.i" -> meta.i

Synonyms q = 'quit'.

Syntax
  'quit' = 'quit'. -- @TRANSLATE!

Meta verb 'quit'
  Does
    Quit.
End verb.


Syntax
  'save' = 'save'. -- @TRANSLATE!

Meta verb 'save'
  Does
    Save.
    "Ok."
End verb.


Syntax
  'restore' = 'restore'. -- @TRANSLATE!

Meta verb 'restore'
  Does
    Restore.
    "Done.$n"
    Look.
End verb.


Syntax
  'restart' = 'restart'. -- @TRANSLATE!

Meta verb 'restart'
  Does
    Restart.
End verb.



Synonyms
  g = again.

Syntax
  again = again. -- @TRANSLATE!

Meta verb again
  Does -- @TRANSLATE!
    "The 'again' command is not available, sorry. You can probably use
     the up and down arrow keys to scroll through your previous commands
     (unless you're using the MSDOS interpreter in which case you can
     press the F3 key to repeat your last command.)"
End verb.


-- Syntax
--   undo = undo.

-- Verb undo
--   Does
--     "Unfortunately you cannot 'undo' commands in this game."
-- End verb.
