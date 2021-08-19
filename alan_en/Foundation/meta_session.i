-- "meta_session.i"

-- Meta verbs definitions for extradiegetic commands relating
-- to the current game session (storage, quitting, etc.).

Synonyms q = 'quit'.

Syntax
  'quit' = 'quit'.

Meta verb 'quit'
  Does
    Quit.
End verb.


Syntax
  'save' = 'save'.

Meta verb 'save'
  Does
    Save.
    "Ok."
End verb.


Syntax
  'restore' = 'restore'.

Meta verb 'restore'
  Does
    Restore.
    "Done.$n"
    Look.
End verb.


Syntax
  'restart' = 'restart'.

Meta verb 'restart'
  Does
    Restart.
End verb.


Syntax
  'score' = 'score'.

Meta verb 'score'
  Does
    Score.
End verb.


Synonyms
  g = again.

Syntax
  again = again.

Meta verb again
  Does
    "The 'again' command is not available, sorry. You can probably use
     the up and down arrow keys to scroll through your previous commands
     (unless you're using the MSDOS interpreter in which case you can
     press the F3 key to repeat your last command.)"
End verb.


-- Syntax
--   undo = undo.

-- Meta verb undo
--   Does
--     "Unfortunately you cannot 'undo' commands in this game."
-- End verb.
