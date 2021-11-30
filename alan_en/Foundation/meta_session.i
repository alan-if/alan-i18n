-- "meta_session.i"

-- Meta verbs definitions for extradiegetic commands relating
-- to the current game session (storage, quitting, etc.).

--==============================================================================
--                   Q U I T T I N G   &   R E S T A R T I N G
--==============================================================================

Synonyms q = 'quit'.

Syntax
  'quit' = 'quit'.

Meta verb 'quit'
  Does
    Quit.
End verb.


Syntax
  'restart' = 'restart'.

Meta verb 'restart'
  Does
    Restart.
End verb.

--==============================================================================
--                      S A V I N G   &   R E S T O R I N G
--==============================================================================

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

--==============================================================================
--                                   S C O R E
--==============================================================================

Syntax
  'score' = 'score'.

Meta verb 'score'
  Does
    Score.
End verb.

--==============================================================================
--                        G A M E   T R A N S C R I P T S
--==============================================================================

Synonyms 'transcript' = 'script'.

Syntax script0    = 'script'.
        script_on  = 'script' on.
        script_off = 'script' off.


Meta verb script0
  Does
    "You can turn file transcription on and off using the SCRIPT ON/OFF
     command within the game."
End verb.


Meta verb script_on
  Does
    Transcript on. "Transcripting enabled."
End verb.


Meta verb script_off
  Does
    Transcript off. "Transcripting disabled."
End verb.

--==============================================================================
--                                  A G A I N
--==============================================================================

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
